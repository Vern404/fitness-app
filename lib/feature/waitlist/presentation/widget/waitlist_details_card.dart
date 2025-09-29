import 'package:flutter/material.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/feature/waitlist/domain/entity/waitlist_details_entity.dart';
import 'package:intl/intl.dart';

class WaitlistDetailsCard extends StatelessWidget {
  const WaitlistDetailsCard({required this.data, super.key});

  final WaitlistBookingEntity? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        _buildWaitlistStatus(),
        _buildClassInfo(context),
        SizedBox(height: 8),
        _buildStudioInfo(context),
      ],
    );
  }

  Widget _buildWaitlistStatus() {
    final gotSpot =
        (data?.groupClass?.totalSlots ?? 0) >
        (data?.groupClass?.totalBooked ?? 0);
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: gotSpot ? LightColors.lightBlue : LightColors.scrim,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Text(
            gotSpot ? 'A spot just opened!' : 'You are on the waitlist',
            style: LightTextStyles.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: gotSpot ? LightColors.darkBlue : LightColors.processing,
            ),
          ),
          gotSpot
              ? RichText(
                  text: TextSpan(
                    text: 'A spot just opened in',
                    style: LightTextStyles.textTheme.bodySmall,
                    children: [
                      TextSpan(
                        text: ' ${data?.groupClass?.name}',
                        style: LightTextStyles.textTheme.bodySmall?.copyWith(
                          color: LightColors.darkBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. Confirm now to secure it — your VP will'
                            ' be charged immediately.',
                        style: LightTextStyles.textTheme.bodySmall,
                      ),
                    ],
                  ),
                )
              : Text(
                  'We’ll notify you if a spot opens up. Your VP will '
                  'only be deducted once your booking is confirmed.',
                  style: LightTextStyles.textTheme.bodySmall,
                ),
        ],
      ),
    );
  }

  Widget _buildClassInfo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: LightColors.divider)),
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextTile(
            'Date and Time',
            '${DateFormat('dd MMM yyyy, h:mm a').format(DateTime.tryParse(data?.groupClass?.startAt ?? '') ?? DateTime.now())} - ${DateFormat('h:mm a').format(DateTime.tryParse(data?.groupClass?.endAt ?? '') ?? DateTime.now())}',
          ),
          Divider(),
          _buildTextTile('Class', '${data?.groupClass?.name}'),
          _buildTextTile(
            'Class Intensity',
            '${data?.groupClass?.intensity.capitalizeFirstLetters()}',
          ),
          _buildTextTile('Instructor', '${data?.instructor?.name}'),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildStudioInfo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: LightColors.divider)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextTile(
            'Studio',
            '${data?.studio?.name}\n${data?.studio?.address}',
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTextTile(String title, String desc) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: LightTextStyles.textTheme.bodySmall),
        Text(
          desc,
          style: LightTextStyles.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: LightColors.onTertiary,
          ),
        ),
      ],
    );
  }
}
