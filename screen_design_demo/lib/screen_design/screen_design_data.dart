// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///A Model that Encapsulate the Screen Information.
/// - isPortrait
/// - screen type
/// - screen size
///
/// author - Ebrahim Mansur.
class ScreenDesignData extends Equatable {
  final bool isPortrait;
  final ScreenType screenType;
  final Size size;
  const ScreenDesignData._({
    required this.isPortrait,
    required this.screenType,
    required this.size,
  });

  factory ScreenDesignData.mobile({
    bool isPortrait = true,
    required Size size,
  }) =>
      ScreenDesignData._(
        isPortrait: isPortrait,
        screenType: ScreenType.mobile,
        size: size,
      );

  factory ScreenDesignData.tablet({
    bool isPortrait = true,
    required Size size,
  }) =>
      ScreenDesignData._(
        isPortrait: isPortrait,
        screenType: ScreenType.tablet,
        size: size,
      );

  bool get isTablet => screenType == ScreenType.tablet;

  @override
  List<Object?> get props => [
        isPortrait,
        size,
        screenType,
      ];
}

//I only defined the types for mobile and tablet 😅 sorry wecode.
enum ScreenType {
  mobile,
  tablet,
}
