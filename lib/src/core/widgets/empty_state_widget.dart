import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../localization/l10n.dart';
import '../themes/themes.dart';
import 'widgets.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    Key? key,
    this.onPressed,
    required this.isAddEvent,
  }) : super(key: key);
  final VoidCallback? onPressed;

  final bool isAddEvent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.images.emptyState.image(),
        5.verticalSpace,
        Text(
          l10n.noUpcomingEvent,
          style: AppStyles.text18PxSemiBold,
        ),
        5.verticalSpace,
        if (isAddEvent)
          Text(
            l10n.addEventsDesc,
            style: AppStyles.text12Px,
          ),
        10.verticalSpace,
        if (isAddEvent)
          SizedBox(
            height: 40.h,
            width: 200.w,
            child: CustomButton(
              label: l10n.addEvent,
              onPressed: onPressed ?? () {},
              fullWidth: true,
              isDisabled: false,
            ),
          ),
      ],
    );
  }
}
