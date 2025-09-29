import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/core/utils/constants.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_cubit.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_initial_params.dart';
import 'package:ifit/feature/waitlist/presentation/manager/waitlist_details_state.dart';
import 'package:ifit/feature/waitlist/presentation/widget/waitlist_details_card.dart';
import 'package:ifit/feature/waitlist/presentation/widget/waitlist_price_review_card.dart';
import 'package:ifit/presentation/widgets/common_app_bar.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WaitlistDetailsPage extends StatefulWidget {
  final WaitlistDetailsCubit cubit;
  final WaitlistDetailsInitialParams initialParams;

  const WaitlistDetailsPage({
    super.key,
    required this.cubit,
    required this.initialParams,
  });

  @override
  State<WaitlistDetailsPage> createState() => _WaitlistDetailsPageState();
}

class _WaitlistDetailsPageState extends State<WaitlistDetailsPage> {
  WaitlistDetailsCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit(widget.initialParams);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'My booking'),
      body: BlocBuilder<WaitlistDetailsCubit, WaitlistDetailsState>(
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
                        WaitlistDetailsCard(data: state.booking),
                        SizedBox(height: 16),
                        WaitlistDetailsPriceReview(
                          bookingReview: state.booking,
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

  Widget _buildBookPolicy(WaitlistDetailsState state) {
    return Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              text:
                  'Our cancellation policy allows refunds only if you'
                  ' cancel at least 12 hours before class starts.'
                  ' Any cancellation within 12 hours before class '
                  'ill not be eligible for a refund.',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colorTheme.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bookNow(WaitlistDetailsState state) {
    final gotSpot =
        (state.booking?.groupClass?.totalSlots ?? 0) >
        (state.booking?.groupClass?.totalBooked ?? 0);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: LightColors.divider)),
      ),
      child: Column(
        children: [
          ...[
            if (gotSpot) ...[
              const SizedBox(height: kScreenPadding),
              _buildBookPolicy(state),
            ] else
              const SizedBox.shrink(),
          ],
          const SizedBox(height: kScreenPadding),
          Row(
            spacing: 8,
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Leave waitlist',
                  onTap: cubit.showLeaveWaitlistRequest,
                  isLoading: state.makingPayment,
                  isSecondary: !gotSpot,
                ),
              ),
              if (gotSpot)
                Expanded(
                  child: CustomButton(
                    text: 'Confirm my spot',
                    onTap: cubit.bookingAction,
                    isLoading: state.makingPayment,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
