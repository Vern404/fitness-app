import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ifit/core/enums/common_error_type.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/core/utils/assets.dart';
import 'package:ifit/core/utils/constants.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_cubit.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_params.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_state.dart';
import 'package:ifit/feature/booking_group_class/presentation/widget/booking_group_class_price_review.dart';
import 'package:ifit/feature/booking_group_class/presentation/widget/booking_group_class_review_card.dart';
import 'package:ifit/presentation/pages/main/my_vp/widgets/vp_current_credit_chip.dart';
import 'package:ifit/presentation/widgets/common_app_bar.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';
import 'package:ifit/presentation/widgets/custom_circular_check_box.dart';
import 'package:ifit/presentation/widgets/custom_textfield.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookingGroupClassReviewPage extends StatefulWidget {
  final BookingGroupClassReviewCubit cubit;
  final BookingGroupClassReviewInitialParams initialParams;

  const BookingGroupClassReviewPage({
    super.key,
    required this.cubit,
    required this.initialParams,
  });

  @override
  State<BookingGroupClassReviewPage> createState() =>
      _BookingGroupClassReviewState();
}

class _BookingGroupClassReviewState extends State<BookingGroupClassReviewPage> {
  BookingGroupClassReviewCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  void dispose() {
    cubit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Booking Review',
        actions: [
          VpCurrentCreditChip(showNextIcon: true, ignoreGesture: true),
        ],
      ),
      body:
          BlocBuilder<
            BookingGroupClassReviewCubit,
            BookingGroupClassReviewState
          >(
            bloc: cubit,
            builder: (context, state) {
              return Skeletonizer(
                enabled: state.loading,
                ignorePointers: state.loading,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 16,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 24,
                        ),
                        child: Column(
                          children: [
                            BookingGroupClassReviewCard(
                              bookingReview: state.bookingGroupClassReview,
                            ),
                            SizedBox(height: 16),
                            _buildPromoCode(),
                            BookingGroupClassPriceReview(
                              bookingReview: state.bookingGroupClassReview,
                              cubit: cubit,
                            ),
                          ],
                        ),
                      ),
                      _bookNow(state),
                    ],
                  ),
                ),
              );
            },
          ),
    );
  }

  Widget _buildBookPolicy(BookingGroupClassReviewState state) {
    return Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCircularCheckBox(
          initialValue: state.agreeWithTerms,
          onChange: cubit.toggleTermsAgreement,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: widget.initialParams.isWaitlist ?? false
                  ? 'By joining the waitlist, I understand that my VP will be '
                        'held and only charged if a spot becomes available and my '
                        'booking is confirmed. I also confirm that I have read and '
                        'agree to ViFit’s '
                  : "By making a booking, I confirm that I have read and agree to ViFit’s ",
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorTheme.onSurface,
              ),
              children: [
                TextSpan(
                  text: 'Terms and Conditions',
                  recognizer: TapGestureRecognizer()
                    ..onTap = cubit.termsAndConditionAction,
                  style: context.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colorTheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(text: ' and the studio policy.'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPromoCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Promo code',
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: LightColors.onSurface,
          ),
        ),
        SizedBox(height: 8),
        CustomTextField(
          controller: cubit.codeTextController,
          hint: 'Enter promo code',
          borderWidth: 1,
          errorText: cubit.state.redeemError.title,
          readOnly: cubit.state.redeemStatus,
          borderColor: cubit.state.redeemError != TextFieldError.none
              ? LightColors.primary
              : cubit.state.redeemStatus
              ? LightColors.success
              : LightColors.divider,
          fillColor: cubit.state.redeemError != TextFieldError.none
              ? LightColors.card
              : cubit.state.redeemStatus
              ? LightColors.successCard
              : LightColors.surface,
          prefixPath: cubit.state.redeemStatus ? Assets.success : null,
          prefixColor: LightColors.success,
          suffix: InkWell(
            onTap: cubit.redeemBookingPromo,
            child: Text(
              cubit.state.redeemStatus ? 'Remove' : 'Apply',
              style: context.textTheme.bodyMedium?.copyWith(
                color: LightColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bookNow(BookingGroupClassReviewState state) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: LightColors.divider)),
        ),
        child: Column(
          children: [
            const SizedBox(height: kScreenPadding),
            _buildBookPolicy(state),
            const SizedBox(height: kScreenPadding),
            CustomButton(
              isDisabled: !state.agreeWithTerms,
              text: widget.initialParams.isWaitlist ?? false
                  ? 'Reserve my spot'
                  : "Book now",
              onTap: cubit.bookingAction,
              isLoading: state.makingPayment,
            ),
          ],
        ),
      ),
    );
  }
}
