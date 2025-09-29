import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifit/core/alert/app_snack_bar.dart';
import 'package:ifit/core/enums/common_error_type.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/utils/constants.dart';
import 'package:ifit/domain/http_req_param/booking_req_param.dart';
import 'package:ifit/domain/repositories/database/remote_database_repository.dart';
import 'package:ifit/domain/stores/user_store.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_navigator.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_params.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_state.dart';
import 'package:ifit/presentation/pages/authentication/authentication_sheet/authentication_sheet.dart';
import 'package:ifit/presentation/pages/main/booking/booking_confirmation/booking_confirmation_initial_params.dart';
import 'package:ifit/presentation/pages/main/booking/in_sufficient_vp_sheet/in_sufficient_vp_sheet.dart';
import 'package:ifit/presentation/pages/main/my_vp/top_up/top_up_initial_params.dart';
import 'package:ifit/presentation/pages/terms_and_conditions/terms_and_conditions_initial_params.dart';
import 'package:ifit/presentation/sheets/information_sheet.dart';

class BookingGroupClassReviewCubit extends Cubit<BookingGroupClassReviewState> {
  final BookingGroupClassReviewNavigator navigator;
  final AppSnackBar snackBar;
  final RemoteDatabaseRepository remoteDatabaseRepository;
  final UserStore userStore;

  BookingGroupClassReviewCubit({
    required this.navigator,
    required this.remoteDatabaseRepository,
    required this.snackBar,
    required this.userStore,
  }) : super(BookingGroupClassReviewState.initial());

  BuildContext get context => navigator.context;

  late BookingGroupClassReviewInitialParams initialParams;
  late TextEditingController codeTextController;

  onInit(BookingGroupClassReviewInitialParams initialParams) {
    codeTextController = TextEditingController();
    this.initialParams = initialParams;
    context.onScreenLoaded(() {
      emit(
        BookingGroupClassReviewState.initial().copyWith(
          agreeWithTerms: initialParams.isAcceptedTerms,
        ),
      );
      _getBookingGroupClassReviewInfo();
    });
  }

  _getBookingGroupClassReviewInfo() async {
    try {
      emit(state.copyWith(loading: true));
      BookingGroupClassEntity bookingGroupClassReview =
          await remoteDatabaseRepository.getBookingGroupClassReview(
            param: _param,
          );
      emit(state.copyWith(bookingGroupClassReview: bookingGroupClassReview));
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  toggleTermsAgreement(bool value) {
    emit(state.copyWith(agreeWithTerms: !state.agreeWithTerms));
  }

  termsAndConditionAction() {
    navigator.openTermsAndConditions(TermsAndConditionsInitialParams());
  }

  bookingAction() async {
    try {
      if (userStore.state.isGuestMode) {
        navigator.navigator.showBottomSheet(context, AuthenticationSheet());
        return;
      }

      if (userStore.state.requestDelete == true) {
        navigator.navigator.showBottomSheet(
          context,
          InformationSheet(
            title: "Account Deletion In Progress",
            description: kDeleteAccountInProgressText,
          ),
        );
        return;
      }
      if (userStore.state.currentVpBalance <
          (int.tryParse(
                state.bookingGroupClassReview?.fees?.totalCredits ?? '0',
              ) ??
              0)) {
        _showInsufficientVp();
        return;
      }
      emit(state.copyWith(makingPayment: true));
      String id;

      if (initialParams.isWaitlist ?? false) {
        id = await remoteDatabaseRepository.joinBookingWaitlist(
          groupClassLinkId:
              state.bookingGroupClassReview?.groupClass?.gpClassLinkId ?? '',
          promoCode: codeTextController.text,
        );
      } else {
        id = await remoteDatabaseRepository.joinBookingGroupClass(
          groupClassLinkId:
              state.bookingGroupClassReview?.groupClass?.gpClassLinkId ?? '',
          promoCode: codeTextController.text,
        );
      }

      userStore.fetchUserLatestInfo();
      navigator.openBookingConfirmation(
        BookingConfirmationInitialParams(
          isSuccess: true,
          bookingId: id,
          isWaitlist: initialParams.isWaitlist ?? false,
        ),
      );
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(makingPayment: false));
    }
  }

  _showInsufficientVp() {
    context.pop();
    navigator.navigator.showBottomSheet(
      context,
      InSufficientVpSheet(
        onTopUpAction: () {
          navigator.openTopUp(TopUpInitialParams());
        },
      ),
    );
  }

  BookingReqParam get _param => BookingReqParam(
    date: initialParams.date,
    groupClassLinkId: initialParams.groupClassLinkId,
    includeEquipment: true,
    lat: initialParams.lat,
    lng: initialParams.lng,
    promoCode: codeTextController.text,
  );

  redeemBookingPromo() async {
    if (state.redeemStatus) {
      onInit(initialParams);
    } else {
      try {
        await _getBookingGroupClassReviewInfo(); // Assuming async

        final hasPromo = (state.bookingGroupClassReview?.fees?.items ?? []).any(
          (item) => item.name?.startsWith('Promo Code:') ?? false,
        );

        if (!hasPromo) {
          // No promo code found — treat as failed
          emit(state.copyWith(redeemError: TextFieldError.invalidCode));
          return;
        }

        // Promo code found — mark as applied
        final appliedCode = codeTextController.text.trim();
        codeTextController.text = "$appliedCode applied";

        emit(
          state.copyWith(redeemError: TextFieldError.none, redeemStatus: true),
        );
      } catch (e) {
        emit(state.copyWith(redeemError: TextFieldError.invalidCode));
      }
    }
  }

  dispose() {
    codeTextController.dispose();
  }

  String formatPromoLabel(String raw) {
    final pattern = RegExp(r'^Promo Code:\s*([A-Z0-9]+)');
    final match = pattern.firstMatch(raw);
    if (match != null) {
      final code = match.group(1) ?? '';
      return 'Promo Code ($code)';
    }
    return raw;
  }
}
