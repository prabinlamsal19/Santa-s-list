import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

extension WidgetExtensionX on Widget {
  Expanded get toExpanded => Expanded(
        child: this,
      );

  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(
        child: this,
      );

  SliverPadding sliverPadding(EdgeInsets insets) => SliverPadding(
        padding: insets,
        sliver: toSliverBox,
      );

  Padding pad(double pad) => Padding(
        padding: EdgeInsets.all(pad.r),
        child: this,
      );

  Padding px(double pad) => Padding(
        padding: EdgeInsets.symmetric(horizontal: pad.w),
        child: this,
      );

  Padding py(double pad) => Padding(
        padding: EdgeInsets.symmetric(vertical: pad.h),
        child: this,
      );

  Padding pypx(double py, double px) => Padding(
        padding: EdgeInsets.symmetric(vertical: py.h, horizontal: px.w),
        child: this,
      );

  Padding pOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          left: left.w,
          top: top.h,
          right: right.w,
          bottom: bottom.h,
        ),
        child: this,
      );
}
