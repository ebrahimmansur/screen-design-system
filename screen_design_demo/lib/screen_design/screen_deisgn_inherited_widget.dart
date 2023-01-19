import 'package:flutter/material.dart';
import 'screen_design_data.dart';

///A Model that encapsulte the screen information and can be
///retrived by calling the [ScreenDesignInheritedWidget.of(context)] or
///by using the extension method on context [context.screenData].
///
///author - Ebrahim Mansur.
class ScreenDesignInheritedWidget extends InheritedWidget {
  final ScreenDesignData screenData;

  const ScreenDesignInheritedWidget._({
    required this.screenData,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant ScreenDesignInheritedWidget oldWidget) =>
      screenData != oldWidget.screenData;

  static ScreenDesignInheritedWidget of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<ScreenDesignInheritedWidget>()!;

  factory ScreenDesignInheritedWidget.build({
    required Widget child,
  }) {
    //this will get us information on the device screen.
    final mediaData = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    final deviceWidth = mediaData.size.shortestSide;
    final isTablet = (deviceWidth >= _kTabletBreakPoint);
    final isPotrait = mediaData.orientation == Orientation.portrait;
    final size = mediaData.size;

    final screenData = isTablet
        ? ScreenDesignData.tablet(size: size, isPortrait: isPotrait)
        : ScreenDesignData.mobile(size: size, isPortrait: isPotrait);
    return ScreenDesignInheritedWidget._(screenData: screenData, child: child);
  }
}

//you can define what constraints you want  - 🤔 wecode
const double _kTabletBreakPoint = 640;
