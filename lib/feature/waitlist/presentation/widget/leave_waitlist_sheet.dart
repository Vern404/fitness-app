import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';

class LeaveWaitlistSheet extends StatelessWidget {
  const LeaveWaitlistSheet({
    required this.onTap,
    required this.className,
    super.key,
  });

  final VoidCallback onTap;
  final String className;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 24),
        Text('Leave waitlist?', style: LightTextStyles.textTheme.titleLarge),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            text: 'Are you sure you want to leave the waitlist for ',
            style: LightTextStyles.textTheme.bodyMedium,
            children: [
              TextSpan(
                text: className,
                style: LightTextStyles.textTheme.bodyMedium?.copyWith(
                  color: LightColors.primary,
                ),
              ),
              TextSpan(
                text:
                    ' You’ll not receive any updates or be notified if a spot opens up.',
                style: LightTextStyles.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomButton(
                text: 'Keep me in',
                isSecondary: true,
                onTap: context.pop,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomButton(text: 'Leave waitlist', onTap: onTap),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
