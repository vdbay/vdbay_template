import 'package:flutter/material.dart';

extension MarginExtension on Widget {
  Widget withMarginAll({double margin = 16}) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: this,
    );
  }

  Widget withMarginSymmetric({double vertical = 0, double horizontal = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget withMarginOnly(
      {double left = 0, double right = 0, double top = 0, double bottom = 0}) {
    return Container(
      margin:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: this,
    );
  }
}

extension PaddingExtension on Widget {
  Widget withPaddingAll({double padding = 16}) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget withPaddingSymmetric({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget withPaddingOnly(
      {double left = 0, double right = 0, double top = 0, double bottom = 0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: this,
    );
  }
}

extension SafeAreaExtension on Widget {
  Widget withSafeArea(
      {bool top = true,
      bool bottom = true,
      bool left = true,
      bool right = true}) {
    return SafeArea(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: this,
    );
  }
}

extension SizedBoxExtension on Widget {
  Widget withSizedBox({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }
}

extension AspectRatioExtension on Widget {
  Widget withAspectRatio({double aspectRatio = 1}) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: this,
    );
  }
}

extension HeroExtension on Widget {
  Widget withHero({required String tag}) {
    return Hero(
      tag: tag.toLowerCase(),
      child: Material(
        color: Colors.transparent,
        child: this,
      ),
    );
  }
}
