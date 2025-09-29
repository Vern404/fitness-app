import 'package:flutter/material.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';
import 'package:ifit/feature/booking_group_class/presentation/manager/booking_group_class_review_cubit.dart';

class BookingGroupClassPriceReview extends StatelessWidget {
  const BookingGroupClassPriceReview({
    required this.bookingReview,
    required this.cubit,
    super.key,
  });

  final BookingGroupClassEntity? bookingReview;
  final BookingGroupClassReviewCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          'Price',
          style: LightTextStyles.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: LightColors.onSurface,
          ),
        ),
        _priceBreakdown(context),
      ],
    );
  }

  TableRow _buildPriceTile({
    required String label,
    required String value,
    required BuildContext context,
    bool isTotal = false,
    bool isPromo = false,
  }) {
    final promoCode = label.split(' ').last;
    final slot = bookingReview?.slots?.first;
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: isPromo
              ? RichText(
                  text: TextSpan(
                    text: 'Promo Code ',
                    style: context.textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: promoCode,
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
              : Text(label, style: context.textTheme.bodySmall),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isTotal && ((slot?.totalBookings ?? 0) <= (slot?.totalBooked ?? 0))
                  ? Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: LightColors.scrim,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        'On hold',
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          color: LightColors.processing,
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
              Text(
                value,
                textAlign: TextAlign.right,
                style: isTotal
                    ? context.textTheme.bodyMedium?.copyWith(
                        color: LightColors.primary,
                        fontWeight: FontWeight.w600,
                      )
                    : context.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: LightColors.onSurface,
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Table _priceBreakdown(BuildContext context) {
    // Extract promo code item
    final promoItems = (bookingReview?.fees?.items ?? [])
        .where((f) => f.name?.startsWith('Promo Code:') ?? false)
        .toList();

    // Calculate booking fee: sum of Studio, Instructor, and Platform credits
    final bookingFeeCredits = (bookingReview?.fees?.items ?? [])
        .where(
          (item) =>
              item.name == 'Studio Fee' ||
              item.name == 'Instructor Fee' ||
              item.name == 'Platform',
        )
        .fold<int>(0, (sum, item) => sum + (int.parse(item.credit ?? '0')));

    return Table(
      columnWidths: const {0: FlexColumnWidth(), 1: IntrinsicColumnWidth()},
      children: [
        // Booking fee row
        _buildPriceTile(
          label: 'Booking Fees',
          value: '$bookingFeeCredits VP',
          context: context,
        ),

        // Promo code row(s)
        for (final feeItem in promoItems)
          _buildPriceTile(
            label: cubit.formatPromoLabel(feeItem.name ?? ''),
            value: '- ${feeItem.credit ?? ''} VP',
            context: context,
            isPromo: true,
          ),

        // Total row
        _buildPriceTile(
          label: 'Total',
          value:
              '${bookingReview?.fees?.totalCredits ?? '0'.toIndianFormat()} VP',
          context: context,
          isTotal: true,
        ),
      ],
    );
  }
}
