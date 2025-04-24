import 'package:flutter/material.dart';

final class AppColors {
  const AppColors._();

  static const Color orange = Color(0xFFFF9800);
  static const Color orange2 = Color(0xFFFF4218);
  static const Color pink = Color(0xFFFF4081);
  static const Color grey = Color(0xFF737373);
  static const Color lightYellow = Color(0xFFFFF9F7);
  static const Color lightOrange = Color(0xFFFFDFD8);

  static const LinearGradient defaultAppBar =
  LinearGradient(colors: [AppColors.orange, AppColors.orange2, AppColors.pink]);
}
