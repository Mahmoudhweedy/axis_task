import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Spacing on num {
  SizedBox get ph => SizedBox(height: toDouble().h);
  SizedBox get pw => SizedBox(width: toDouble().w);
  EdgeInsets get allPadding => EdgeInsets.all(toDouble().sp);
  EdgeInsets get leftPadding => EdgeInsets.only(left: toDouble().w);
  EdgeInsets get rightPadding => EdgeInsets.only(right: toDouble().w);
  EdgeInsets get topPadding => EdgeInsets.only(top: toDouble().h);
  EdgeInsets get bottomPadding => EdgeInsets.only(bottom: toDouble().h);
}

extension WidgetRaduis on num {
  BorderRadius get borderRadius => BorderRadius.circular(toDouble().h);
}

extension WidgetPadding on Widget {
  Widget allPadding(int padding) => Padding(
        padding: padding.allPadding,
        child: this,
      );
  Widget horizontalPadding(int padding) => Padding(
        padding: (padding, 0).padding,
        child: this,
      );
  Widget bottomPadding(int padding) => Padding(
        padding: padding.bottomPadding,
        child: this,
      );
}

extension DoubleSpacing on (num, num) {
  EdgeInsets get padding => EdgeInsets.symmetric(
        horizontal: $1.toDouble().w,
        vertical: $2.toDouble().h,
      );
}

extension ScreenResolution on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
}
