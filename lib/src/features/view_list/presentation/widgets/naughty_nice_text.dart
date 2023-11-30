import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

class NaughtyNiceText extends StatelessWidget {
  const NaughtyNiceText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 80.w,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12.0),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
