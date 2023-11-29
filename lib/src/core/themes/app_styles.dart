import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/themes/app_colors.dart';

abstract class AppStyles {
  // text 9px
  //regular
  static TextStyle text9Px = GoogleFonts.plusJakartaSans(
    fontSize: 9.sp,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text9PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text9PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 9.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text9PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 9.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(11, 9),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 10px
  //regular
  static TextStyle text10Px = GoogleFonts.plusJakartaSans(
    fontSize: 10.sp,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text10PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text10PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text10PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 10.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(12, 10),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 12px

  //regular
  static TextStyle text12Px = GoogleFonts.plusJakartaSans(
    fontSize: 12.sp,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text12PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text12PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text12PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(14, 12),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 13px
  //regular
  static TextStyle text13Px = GoogleFonts.plusJakartaSans(
    fontSize: 13.sp,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text13PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text13PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text13PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(17, 13),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 14px
  //regular
  static TextStyle text14Px = GoogleFonts.plusJakartaSans(
    fontSize: 14.sp,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text14PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text14PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text14PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(17, 14),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 16px
  //regular
  static TextStyle text16Px = GoogleFonts.plusJakartaSans(
    fontSize: 16.sp,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text16PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text16PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text16PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(19, 16),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 18px
  //regular
  static TextStyle text18Px = GoogleFonts.plusJakartaSans(
    fontSize: 18.sp,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text18PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text18PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text18PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(21, 18),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 20px
  //regular
  static TextStyle text20Px = GoogleFonts.plusJakartaSans(
    fontSize: 20.sp,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text20PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text20PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text20PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(24, 20),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 24px
  //regular
  static TextStyle text24Px = GoogleFonts.plusJakartaSans(
    fontSize: 24.sp,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text24PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text24PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text24PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(28, 24),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 28px
  //regular
  static TextStyle text28Px = GoogleFonts.plusJakartaSans(
    fontSize: 28.sp,
    height: calculateHeight(32, 28),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text28PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(32, 28),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text28PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(32, 28),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text28PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(32, 28),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 30px
  //regular
  static TextStyle text30Px = GoogleFonts.plusJakartaSans(
    fontSize: 30.sp,
    height: calculateHeight(35, 30),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //medium
  static TextStyle text30PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(35, 30),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //SemiBold
  static TextStyle text30PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(35, 30),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  //bold
  static TextStyle text30PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(35, 30),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  // text 36px
  //regular
  static TextStyle text36Px = GoogleFonts.plusJakartaSans(
    fontSize: 36.sp,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
    letterSpacing: calculateSpacing(-0.02),
  );

  //medium
  static TextStyle text36PxMedium = GoogleFonts.plusJakartaSans(
    fontSize: 36.sp,
    fontWeight: FontWeight.w500,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
    letterSpacing: calculateSpacing(-0.02),
  );

  //SemiBold
  static TextStyle text36PxSemiBold = GoogleFonts.plusJakartaSans(
    fontSize: 36.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
    letterSpacing: calculateSpacing(-0.02),
  );

  //bold
  static TextStyle text36PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 36.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(43, 36),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
    letterSpacing: calculateSpacing(-0.02),
  );

  //bold
  static TextStyle text56PxBold = GoogleFonts.plusJakartaSans(
    fontSize: 56.sp,
    fontWeight: FontWeight.bold,
    height: calculateHeight(67, 56),
    fontStyle: FontStyle.normal,
    color: AppColors.textDark,
  );

  static TextStyle text16pxUnderlinedPurple = GoogleFonts.plusJakartaSans(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    height: calculateHeight(19, 16),
    decoration: TextDecoration.underline,
    decorationColor: AppColors.secondary,
    decorationThickness: 2.0,
    color: AppColors.secondary,
  );

  // calculate line height of text
  static double calculateHeight(double height, double fontSize) {
    return height.h / fontSize.sp;
  }

  static double calculateSpacing(double em) {
    return 16 * em;
  }
}
