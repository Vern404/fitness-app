import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifit/core/extensions/date_time_extension.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/core/utils/assets.dart';
import 'package:ifit/core/utils/constants.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';
import 'package:ifit/presentation/pages/main/booking/booking_slot_selection/booking_slot_selection_cubit.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';
import 'package:ifit/presentation/widgets/no_data_found.dart';

class BookingGroupClassPage extends StatelessWidget {
  const BookingGroupClassPage({
    required this.slots,
    required this.cubit,
    super.key,
  });

  final List<BookingGroupClassEntity> slots;
  final BookingSlotSelectionCubit cubit;

  @override
  Widget build(BuildContext context) {
    return slots.isEmpty
        ? Column(
            spacing: 16,
            children: [
              SizedBox(height: context.sh * 0.15),
              const NoDataFound(
                text:
                    "No classes scheduled for today. \n"
                    "Find the next available session to keep your\n practice moving.",
              ),
              if ((cubit.state.nextAvailableDate ?? '').isNotEmpty)
                CustomButton(
                  text: 'Next available class',
                  width: context.sw * 0.5,
                  onTap: () => cubit.onDateChange(
                    DateTime.tryParse(cubit.state.nextAvailableDate ?? '') ??
                        DateTime.now(),
                  ),
                ),
            ],
          )
        : SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount: slots.length,
                  padding: EdgeInsets.all(kScreenPadding),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _buildGroupClassCard(slots[index]);
                  },
                ),
              ],
            ),
          );
  }

  Widget _buildGroupClassCard(BookingGroupClassEntity data) {
    return InkWell(
      onTap: () => cubit.openBookingGroupClassDetails(data),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: LightColors.divider, width: 1),
          ),
        ),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      data.groupClass?.name ?? '',
                      style: LightTextStyles.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: LightColors.onTertiary,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: LightColors.primary,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: LightColors.grey, width: 1),
                  ),
                  child: Text(
                    '${(double.tryParse(data.groupClass?.studioPriceInCredits ?? '0')?.toStringAsFixed(0))} VP',
                  ),
                ),
              ],
            ),
            Text(
              'Min. ${data.groupClass?.minParticipants} pax to start',
              style: LightTextStyles.textTheme.bodySmall,
            ),
            Row(
              spacing: 24,
              children: [
                _iconText(
                  '${data.groupClass?.intensity?.capitalizeFirstLetters()}',
                  Assets.tag,
                ),
                _iconText('${data.instructor?.name}', Assets.user),
              ],
            ),
            TimeSlotsGrid(
              slots: data.slots ?? [],
              onTap: (time, isWaitlist) {
                cubit.groupTimeSlotAction.call(
                  time,
                  groupClassLinkId: data.groupClass?.gpClassLinkId ?? '',
                  isWaitlist: isWaitlist,
                  credit: double.parse(
                    data.groupClass?.studioPriceInCredits ?? '0',
                  ).toInt(),
                );
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _iconText(String text, String icon) {
    return Row(
      spacing: 8,
      children: [
        SvgPicture.asset(
          icon,
          height: 16,
          width: 16,
          colorFilter: ColorFilter.mode(LightColors.primary, BlendMode.srcIn),
        ),
        Text(text, style: LightTextStyles.textTheme.bodySmall),
      ],
    );
  }
}

class TimeSlotsGrid extends StatelessWidget {
  final List<BookingGroupClassSlotEntity> slots;
  final Function(String time, bool isWaitlist) onTap;

  const TimeSlotsGrid({super.key, required this.slots, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 12,
        childAspectRatio: 1.5,
      ),
      itemCount: slots.length,
      itemBuilder: (context, index) {
        final data = slots[index];

        return _slotCard(
          time: (data.startTime ?? '').format12Hour(),
          onTap: onTap,
          totalBooked: data.totalBooked ?? 0,
          totalMember: data.totalBookings ?? 0,
        );
      },
    );
  }

  Widget _slotCard({
    required String? time,
    required Function(String time, bool isWaitlist) onTap,
    required int totalBooked,
    required int totalMember,
  }) {
    final isFullyBooked = totalBooked == totalMember;
    return InkWell(
      onTap: () => onTap(time ?? '', isFullyBooked),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: isFullyBooked
                  ? LightColors.lightGrey2
                  : LightColors.surface,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: isFullyBooked
                    ? LightColors.lightGrey2
                    : LightColors.grey,
                width: 1,
              ),
            ),
            child: Text(
              time ?? '',
              style: LightTextStyles.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: isFullyBooked
                    ? LightColors.tertiary
                    : LightColors.onTertiary,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              !isFullyBooked
                  ? '$totalBooked/$totalMember slots'
                  : 'Join waitlist',
              style: LightTextStyles.textTheme.bodySmall?.copyWith(
                color: !isFullyBooked
                    ? LightColors.tertiary
                    : LightColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
