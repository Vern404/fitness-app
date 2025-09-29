import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ifit/core/alert/app_snack_bar.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/utils/constants.dart';
import 'package:ifit/domain/repositories/database/remote_database_repository.dart';
import 'package:ifit/domain/stores/user_store.dart';
import 'package:ifit/feature/waitlist/domain/entity/waitlist_details_entity.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_initial_params.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_navigator.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_state.dart';
import 'package:ifit/feature/waitlist/presentation/widget/leave_waitlist_sheet.dart';
import 'package:ifit/presentation/pages/authentication/authentication_sheet/authentication_sheet.dart';
import 'package:ifit/presentation/pages/main/booking/booking_confirmation/booking_confirmation_initial_params.dart';
import 'package:ifit/presentation/pages/terms_and_conditions/terms_and_conditions_initial_params.dart';
import 'package:ifit/presentation/sheets/information_sheet.dart';

class WaitlistDetailsCubit extends Cubit<WaitlistDetailsState> {
  final WaitlistDetailsNavigator navigator;
  final AppSnackBar snackBar;
  final RemoteDatabaseRepository remoteDatabaseRepository;
  final UserStore userStore;

  WaitlistDetailsCubit({
    required this.navigator,
    required this.remoteDatabaseRepository,
    required this.snackBar,
    required this.userStore,
  }) : super(WaitlistDetailsState.initial());

  BuildContext get context => navigator.context;

  late WaitlistDetailsInitialParams initialParams;

  onInit(WaitlistDetailsInitialParams initialParams) {
    this.initialParams = initialParams;
    context.onScreenLoaded(() {
      _getWaitlistDetailsInfo();
    });
  }

  _getWaitlistDetailsInfo() async {
    try {
      emit(state.copyWith(loading: true));
      WaitlistBookingEntity booking = await remoteDatabaseRepository
          .getWaitlistDetail(waitlistId: initialParams.groupClassLinkId);
      emit(state.copyWith(booking: booking));
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
      emit(state.copyWith(makingPayment: true));
      await remoteDatabaseRepository.acceptWaitlist(
        waitListId: state.booking?.id ?? '',
      );

      userStore.fetchUserLatestInfo();
      navigator.openBookingConfirmation(
        BookingConfirmationInitialParams(
          isSuccess: true,
          bookingId: '',
          isWaitlist: false,
        ),
      );
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(makingPayment: false));
    }
  }

  leaveAction() async {
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
      emit(state.copyWith(makingPayment: true));
      await remoteDatabaseRepository.rejectWaitlist(
        waitListId: state.booking?.id ?? '',
      );

      userStore.fetchUserLatestInfo();
      navigator.navigator.pop(context);
      navigator.navigator.pop(context, true);
    } catch (e) {
      snackBar.show(e.toString());
    } finally {
      emit(state.copyWith(makingPayment: false));
    }
  }

  void showLeaveWaitlistRequest() {
    navigator.navigator.showBottomSheet(
      context,
      LeaveWaitlistSheet(
        onTap: () => leaveAction(),
        className: state.booking?.groupClass?.name ?? '',
      ),
    );
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
