import 'package:flutter/material.dart';
import 'package:ifit/core/enums/booking_type.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/feature/waitlist/domain/entity/waitlist_details_entity.dart';
import 'package:intl/intl.dart';

class WaitlistInfoCard extends StatelessWidget {
  final double? width;
  final WaitlistBookingEntity booking;
  final bool isHomeView;
  final VoidCallback? onTap;
  final bool allowSessionFeedback;
  final bool showVerticalDivider;
  final bool showStatus;

  const WaitlistInfoCard({
    super.key,
    this.width,
    required this.booking,
    this.isHomeView = false,
    this.allowSessionFeedback = true,
    this.showVerticalDivider = false,
    this.showStatus = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: BoxConstraints(minHeight: 104),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 12,
                  children: [
                    if (showVerticalDivider)
                      VerticalDivider(
                        thickness: 2,
                        width: 0,
                        color: BookingType.groupClass.dividerColor,
                      ),
                    Expanded(child: _infoSection(context: context)),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: context.colorTheme.tertiary,
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget _infoSection({required BuildContext context}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: _dateTime(context: context)),
        Expanded(flex: 9, child: _instructorAndStudioInfo(context: context)),
      ],
    );
  }

  Widget _vpInformation(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.colorTheme.surface,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: context.themeData.dividerColor, width: 1.5),
      ),
      child: Text(
        "${booking.bookingFees?.totalCredits} VP",
        style: context.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _dateTime({required BuildContext context}) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          DateFormat('dd MMM').format(
            DateTime.tryParse(booking.groupClass?.startAt ?? '') ??
                DateTime.now(),
          ),
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          DateFormat('hh:mm a').format(
            DateTime.tryParse(booking.groupClass?.startAt ?? '') ??
                DateTime.now(),
          ),
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }

  Widget _instructorAndStudioInfo({required BuildContext context}) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${booking.groupClass?.name}',
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
                Text(
                  '${booking.groupClass?.intensity}',
                  style: context.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            _vpInformation(context),
          ],
        ),
        Text(
          "${booking.groupClass?.totalBooked} / ${booking.groupClass?.totalSlots} members",
          style: context.textTheme.bodySmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "${booking.studio?.name}",
          style: context.textTheme.bodySmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          "${booking.status}",
          style: context.textTheme.bodySmall?.copyWith(
            color: LightColors.processing,
          ),
        ),
        _confirmMySpot(context: context),
      ],
    );
  }

  Widget _confirmMySpot({required BuildContext context}) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        "Confirm my spot",
        style: context.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: context.colorTheme.primary,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
