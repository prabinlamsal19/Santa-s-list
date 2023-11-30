import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';
import '../../core/themes/themes.dart';
import '../widgets/widgets.dart';

extension BuildContextX on BuildContext {
  void showCustomDialog({
    void Function(BuildContext context)? onClose,
    void Function(BuildContext context)? onActionConfirm,
    required Widget content,
    required String title,
    required String actionTitle,
    bool barrierDismissle = false,
  }) {
    showDialog(
      context: this,
      barrierDismissible: barrierDismissle,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppStyles.text18PxBold,
                ),
                IconButton(
                  onPressed: () {
                    if (onClose == null) {
                      context.popRoute();
                    } else {
                      onClose.call(context);
                    }
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
            content,
            18.verticalSpace,
            if (onActionConfirm != null)
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      label: actionTitle,
                      onPressed: () => onActionConfirm(context),
                      isDisabled: false,
                    ),
                  ),
                ],
              )
          ],
        ).pad(25),
      ),
    );
  }

  void showCreateEventDialog({
    required String title,
    required Widget icon,
    required String description,
    required Widget content,
  }) {
    showDialog(
      context: this,
      builder: (BuildContext context) => Dialog(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 8.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              12.verticalSpace,
              Text(
                title,
                style: AppStyles.text18PxBold.textDark,
              ),
              12.verticalSpace,
              Text(
                description,
                textAlign: TextAlign.center,
              ),
              12.verticalSpace,
              content,
            ],
          ),
        ),
      ),
    );
  }

  void showAlertDialog({
    required String title,
    String? description,
    Widget? content,
    Widget? icon,
  }) {
    showDialog(
      context: this,
      builder: (BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: (icon != null)
              ? EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w)
              : EdgeInsets.symmetric(vertical: 40.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (icon != null) icon,
              12.verticalSpace,
              Text(
                title,
                style: AppStyles.text18PxBold.textDark,
              ),
              12.verticalSpace,
              if (description != null)
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
              12.verticalSpace,
              if (content != null) content,
            ],
          ),
        ),
      ),
    );
  }

  void showCustomSnackBar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: AppColors.black),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
