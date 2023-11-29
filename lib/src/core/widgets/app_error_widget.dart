import 'package:flutter/material.dart';
import '../exceptions/xception.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.xception});

  final Xception? xception;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Flutter Error Screen $xception'),
    );
  }
}
