import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/presentation/widgets/custom_button.dart';

class ExclusiveStudioInvitationSheet extends StatelessWidget {
  const ExclusiveStudioInvitationSheet({
    required this.onAccept,
    required this.onReject,
    required this.studioName,
    super.key,
  });

  final VoidCallback onAccept;
  final VoidCallback onReject;
  final String studioName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 24),
        Text(
          'Reject studio invitation',
          style: LightTextStyles.textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          'Are you sure you want to reject the invitation from  $studioName. '
          'If you reject, you won’t be linked to this studio and they will be '
              'notified of your decision.',
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
              child: CustomButton(text: 'Reject invitation', onTap: onReject),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
