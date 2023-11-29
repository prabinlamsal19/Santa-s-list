import 'package:flutter/material.dart';

import '../../../../core/themes/themes.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.borderRadius = 12.0,
    this.color = Colors.white,
  });
  final Color color;
  final Widget child;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.black.withAlpha(26),
            offset: const Offset(0, 4),
            blurRadius: 14,
          )
        ],
      ),
      child: child,
    );
  }
}
