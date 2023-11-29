import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../themes/themes.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.borderColor = AppColors.transparent,
    this.labelStyle,
    this.textColor = AppColors.textDark,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 48,
  }) : children = [
          loading
              ? _ButtonLoading(
                  label: label,
                  labelStyle: labelStyle,
                  isDisabled: isDisabled,
                  textColor: textColor)
              : Text(
                  label,
                  style: labelStyle?.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor) ??
                      AppStyles.text16PxSemiBold.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor),
                )
        ];

  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final TextStyle? labelStyle;
  final bool loading;
  final bool isDisabled;
  final bool fullWidth;
  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isDisabled ? backgroundColor.withOpacity(0.5) : backgroundColor,
      clipBehavior: Clip.antiAlias,
      type: MaterialType.button,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: 8.rounded,
      ),
      child: InkWell(
        onTap: (isDisabled || loading) ? null : onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.linearToEaseOut,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          height: height,
          child: Row(
            mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}

class _ButtonLoading extends StatelessWidget {
  const _ButtonLoading({
    required this.label,
    required this.labelStyle,
    required this.isDisabled,
    required this.textColor,
  });
  final String label;
  final Color textColor;
  final TextStyle? labelStyle;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 108.w,
      height: 58.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            label,
            style: labelStyle?.copyWith(
                    color:
                        isDisabled ? textColor.withOpacity(0.6) : textColor) ??
                AppStyles.text16PxSemiBold.copyWith(
                    color: isDisabled ? textColor.withOpacity(0.6) : textColor),
          ),
          Positioned(
            right: 0,
            child: SizedBox(
              height: 22.r,
              width: 22.r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    11.r), // half of the width/height to make it circular
                child: const CircularProgressIndicator(
                  color: AppColors.black,
                  backgroundColor: AppColors.transparent,
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.black),
                  strokeCap: StrokeCap.round,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
