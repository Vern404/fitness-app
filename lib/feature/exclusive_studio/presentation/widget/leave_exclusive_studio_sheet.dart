import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';

class LeaveExclusiveStudioSheet extends StatelessWidget {
  const LeaveExclusiveStudioSheet({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Leave studio?', style: LightTextStyles.textTheme.titleLarge),
        const SizedBox(height: 8),
        Text(
          'Are you sure you want to leave this studio? You will no longer'
          ' receive bookings from this studio once the request is approved.',
          style: LightTextStyles.textTheme.bodyMedium,
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
              child: CustomButton(text: 'Leave studio', onTap: onTap),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
