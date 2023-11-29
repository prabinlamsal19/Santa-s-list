import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../localization/l10n.dart';
import '../themes/themes.dart';
import 'widgets.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    required this.onTap,
    required this.activeIndex,
  });

  final ValueChanged<int> onTap;
  final int activeIndex;

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 0.14,
              color: AppColors.lightGrey,
            ),
          ],
        ),
        child: BottomAppBar(
          height: 60,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: BottomBarItem(
                  icon: Assets.icons.home,
                  label: l10n.home,
                  onTap: () => onTap(0),
                  active: activeIndex == 0,
                  index: 0,
                ),
              ),
              Expanded(
                child: BottomBarItem(
                  icon: Assets.icons.calendar,
                  label: l10n.myEvents,
                  onTap: () => onTap(1),
                  active: activeIndex == 1,
                  index: 1,
                ),
              ),
              Expanded(
                child: BottomBarItem(
                  icon: Assets.icons.googleCalendar,
                  label: l10n.googleEvents,
                  onTap: () => onTap(2),
                  active: activeIndex == 2,
                  index: 2,
                ),
              ),
              Expanded(
                child: BottomBarItem(
                  icon: Assets.icons.glyph,
                  label: l10n.settings,
                  onTap: () => onTap(3),
                  active: activeIndex == 3,
                  index: 3,
                ),
              ),
            ],
          ),
        ),
      );
}

class BottomBarItem extends StatefulWidget {
  const BottomBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.active = false,
    required this.index,
  });

  final String icon;
  final String label;
  final VoidCallback onTap;
  final bool active;
  final int index;

  @override
  State<BottomBarItem> createState() => _BottomBarItemState();
}

class _BottomBarItemState extends State<BottomBarItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      splashColor: AppColors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          4.verticalSpace,
          SvgImage(
            widget.icon,
            color: widget.active ? AppColors.secondary : AppColors.iconColor,
            height: 20.h,
            width: 20.w,
          ),
          4.verticalSpace,
          Text(
            widget.label,
            style: AppStyles.text10Px.copyWith(
              color: widget.active ? AppColors.secondary : AppColors.iconColor,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          4.verticalSpace,
        ],
      ),
    );
  }
}
