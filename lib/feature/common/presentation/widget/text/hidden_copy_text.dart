import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/core/utils/assets.dart';

class HiddenText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final bool enableCopy;
  final bool enableToggle;
  final String hiddenReplacement;
  final double? iconSize;
  final Color? iconColor;
  final VoidCallback? onCopyTap;

  const HiddenText({
    super.key,
    required this.text,
    this.style,
    this.enableCopy = false,
    this.enableToggle = false,
    this.hiddenReplacement = '****',
    this.onCopyTap,
    this.iconSize = 16,
    this.iconColor = LightColors.tertiary,
  });

  @override
  State<HiddenText> createState() => _HiddenTextState();
}

class _HiddenTextState extends State<HiddenText> {
  bool _isVisible = false;

  void _copyText(BuildContext context) {
    Clipboard.setData(ClipboardData(text: widget.text));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Copied to clipboard')));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.enableCopy || _isVisible
              ? widget.text
              : widget.hiddenReplacement,
          style: widget.style,
        ),
        if (widget.enableCopy) ...[
          const SizedBox(width: 6),
          GestureDetector(
            onTap: widget.onCopyTap ?? () => _copyText(context),
            child: SvgPicture.asset(Assets.copy),
          ),
        ],
        if (widget.enableToggle) ...[
          const SizedBox(width: 6),
          GestureDetector(
            onTap: () => setState(() => _isVisible = !_isVisible),
            child: Icon(
              _isVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
          ),
        ],
      ],
    );
  }
}
