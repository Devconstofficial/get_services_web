import 'package:flutter/material.dart';
import 'popup_menu.dart';

class MenuConfig {
  final double itemWidth;
  final double itemHeight;
  final double arrowHeight;
  final int maxColumn;
  final Color backgroundColor;
  final Color highlightColor;
  final Color lineColor;
  final bool showDivider;

  const MenuConfig({
    this.itemWidth = 72.0,
    this.itemHeight = 65.0,
    this.arrowHeight = 10.0,
    this.maxColumn = 4,
    this.backgroundColor = const Color(0xff232323),
    this.highlightColor = const Color(0xff353535),
    this.lineColor = const Color(0x55000000),
    this.showDivider = false,
  });

  factory MenuConfig.forList({
    double itemWidth = 120.0,
    double itemHeight = 40.0,
    double arrowHeight = 10.0,
    Color backgroundColor = Colors.white,
    Color highlightColor = const Color(0xff353535),
    Color lineColor = const Color(0x55000000),
    bool showDivider = false,
  }) {
    return MenuConfig(
      itemWidth: itemWidth,
      itemHeight: itemHeight,
      arrowHeight: arrowHeight,
      backgroundColor: backgroundColor,
      highlightColor: highlightColor,
      lineColor: lineColor,
      showDivider: showDivider,
    );
  }
}
