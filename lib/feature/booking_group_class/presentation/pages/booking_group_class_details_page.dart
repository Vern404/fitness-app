import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifit/core/extensions/string_extension.dart';
import 'package:ifit/core/extensions/theme_extension.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/core/utils/assets.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';
import 'package:ifit/presentation/pages/main/my_vp/widgets/vp_current_credit_chip.dart';
import 'package:ifit/presentation/widgets/common_app_bar.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';
import 'package:ifit/presentation/widgets/custom_fav_button.dart';
import 'package:ifit/presentation/widgets/custom_read_more.dart';
import 'package:ifit/presentation/widgets/images/app_network_image_viewer.dart';

class BookingGroupClassDetailsParams {
  final BookingGroupClassEntity data;
  final VoidCallback viewInstructorProfile;
  final ValueChanged<bool> faveInstructor;

  BookingGroupClassDetailsParams({
    required this.data,
    required this.viewInstructorProfile,
    required this.faveInstructor,
  });
}

class BookingGroupClassDetailsPage extends StatelessWidget {
  const BookingGroupClassDetailsPage({required this.params, super.key});

  final BookingGroupClassDetailsParams params;

  @override
  Widget build(BuildContext context) {
    final groupClass = params.data.groupClass;
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Class Details',
        actions: [VpCurrentCreditChip()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 40,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${groupClass?.name}',
                    style: LightTextStyles.textTheme.titleLarge,
                  ),
                  Text(
                    'Min. ${groupClass?.minParticipants} pax to start',
                    style: LightTextStyles.textTheme.bodySmall,
                  ),
                  _iconText(
                    '${groupClass?.intensity?.capitalizeFirstLetters()}',
                    Assets.tag,
                  ),
                  CustomReadMore(
                    maxLines: 3,
                    text: '${groupClass?.description}',
                    textStyle: LightTextStyles.textTheme.bodyMedium?.copyWith(
                      color: LightColors.tertiary,
                    ),
                  ),
                ],
              ),
              _buildInstructorCard(context),
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What To Prepare',
                    style: LightTextStyles.textTheme.titleMedium,
                  ),
                  CustomReadMore(
                    maxLines: 3,
                    text: '${groupClass?.preparation}',
                    textStyle: LightTextStyles.textTheme.bodyMedium?.copyWith(
                      color: LightColors.tertiary,
                    ),
                  ),
                ],
              ),
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Class Cancellation Policy',
                    style: LightTextStyles.textTheme.titleMedium,
                  ),
                  Text(
                    'This class needs at least ${groupClass?.minParticipants} participants to proceed.'
                    ' If fewer than ${groupClass?.minParticipants} spots are booked 12 hours before the'
                    ' class start time, the class will be automatically '
                    'cancelled and your VP will be refunded.',
                    style: LightTextStyles.textTheme.bodyMedium?.copyWith(
                      color: LightColors.tertiary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructorCard(BuildContext context) {
    final instructor = params.data.instructor;

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFF9F7),
            Color(0xFFFFFCFB).withValues(alpha: 0.47),
            Color(0xFFFFFFFF),
          ],
        ),
        image: DecorationImage(
          image: AssetImage(Assets.groupClassInstructorBg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 16,
            children: [
              Container(
                height: 72,
                width: 72,
                padding: const EdgeInsets.all(1),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: context.colorTheme.surface,
                  shape: BoxShape.circle,
                ),
                child: AppNetworkImageViewer(
                  image: instructor?.pictures?.first ?? '',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(
                    (instructor?.name ?? '').capitalizeFirstLetters(),
                    style: LightTextStyles.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: LightColors.onTertiary,
                    ),
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      _iconText('${instructor?.totalRatingCount}', Assets.star),
                      _iconText(
                        '${instructor?.totalBookings} classes taught',
                        Assets.fire,
                      ),
                    ],
                  ),
                  CustomButton(
                    text: 'View profile',
                    width: 94,
                    height: 28,
                    isSecondary: true,
                    style: LightTextStyles.textTheme.bodySmall?.copyWith(
                      color: LightColors.primary,
                    ),
                    onTap: params.viewInstructorProfile,
                  ),
                ],
              ),
            ],
          ),
          CustomFavButton(
            initialValue: false,
            id: instructor?.id ?? '',
            onToggle: params.faveInstructor,
          ),
        ],
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
