import 'package:flutter/material.dart';
import 'screen_deisgn_inherited_widget.dart';
import 'screen_design_data.dart';

extension ScreenDesignExtension on BuildContext {
  ScreenDesignData get screenData =>
      ScreenDesignInheritedWidget.of(this).screenData;
}
