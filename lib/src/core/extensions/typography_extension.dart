import 'package:flutter/material.dart';

import '../themes/themes.dart';

extension TypographyExtension on TextStyle {
  //colors
  TextStyle get primary => copyWith(color: AppColors.primary);

  TextStyle get secondary => copyWith(color: AppColors.secondary);

  TextStyle get textDark => copyWith(color: AppColors.textDark);

  TextStyle get grey => copyWith(color: AppColors.grey);

  TextStyle get white => copyWith(color: AppColors.white);

  TextStyle get statusRed => copyWith(color: AppColors.statusRed);
}
