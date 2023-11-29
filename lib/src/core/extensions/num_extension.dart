import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

extension NumExtensionX on num {
  Radius get circular => Radius.circular(toDouble().r);

  BorderRadiusGeometry get rounded => BorderRadius.circular(toDouble().r);

  EdgeInsets get all => EdgeInsets.all(toDouble().r);

  EdgeInsets get bottomOnly => EdgeInsets.only(bottom: toDouble().r);

  EdgeInsets get topOnly => EdgeInsets.only(top: toDouble().r);

  EdgeInsets get leftOnly => EdgeInsets.only(left: toDouble().r);

  EdgeInsets get rightOnly => EdgeInsets.only(right: toDouble().r);

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble().w);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble().h);
}
