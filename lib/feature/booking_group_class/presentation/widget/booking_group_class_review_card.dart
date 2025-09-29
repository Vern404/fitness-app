import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifit/core/extensions/date_time_extension.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';
import 'package:ifit/presentation/widgets/primary_surface_container.dart';

import '../../../../../../core/utils/assets.dart';

class BookingGroupClassReviewCard extends StatelessWidget {
  final BookingGroupClassEntity? bookingReview;

  const BookingGroupClassReviewCard({super.key, required this.bookingReview});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        PrimarySurfaceContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _iconWithText(
                icon: Assets.filledLocation,
                title: "${bookingReview?.studio?.name}",
                subTitle: '${bookingReview?.studio?.address}',
                context: context,
              ),
              _divider(context),
              _iconWithText(
                icon: Assets.filledCalendar,
                title:
                    "${bookingReview?.slots?.first.date?.toDayMonthNameYearFormat()}, ${bookingReview?.slots?.first.startTime?.format12Hour()?.toOneHourRange()}",
                context: context,
              ),
              _divider(context),
              _iconWithText(
                icon: Assets.filledTag,
                title: '${bookingReview?.groupClass?.name}',
                subTitle: (bookingReview?.groupClass?.intensity ?? '')
                    .capitalizeFirstLetters(),
                context: context,
              ),
              if (bookingReview?.instructor != null) _divider(context),
              if (bookingReview?.instructor != null)
                _iconWithText(
                  icon: Assets.userFilled,
                  title: "${bookingReview?.instructor?.name}",
                  context: context,
                ),
            ],
          ),
        ),
        PrimarySurfaceContainer(
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Minimum ${bookingReview?.groupClass?.minParticipants} "
                "participant(s) required",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'This class will be cancelled',
                  style: context.textTheme.bodySmall,
                  children: [
                    TextSpan(
                      text: ' 12 hours before the start time',
                      style: context.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: LightColors.primary,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' if fewer than ${bookingReview?.groupClass?.minParticipants}'
                          ' participants are booked. Your VP will be fully refunded.',
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _divider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Divider(color: context.colorTheme.secondaryContainer),
    );
  }

  Widget _iconWithText({
    required String icon,
    required String title,
    required BuildContext context,
    String? subTitle,
  }) {
    return Row(
      spacing: 12,
      children: [
        if (icon.isNotEmpty)
          SvgPicture.asset(
            icon,
            width: 16,
            colorFilter: ColorFilter.mode(
              context.colorTheme.primary,
              BlendMode.srcIn,
            ),
          ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              Text(
                title,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (subTitle != null)
                Text(subTitle, style: context.textTheme.bodySmall),
            ],
          ),
        ),
      ],
    );
  }
}
