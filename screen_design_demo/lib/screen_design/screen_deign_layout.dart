import 'package:flutter/material.dart';
import 'screen_design_extension.dart';

///The widget will resolve the screen layout process based on the screen information
///coming from the design screen data.
///
///
///author - Ebrahim Mansur.
class ScreenDesignLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  const ScreenDesignLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.screenData.isTablet ? tablet : mobile;
  }
}
