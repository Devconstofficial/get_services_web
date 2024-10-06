import 'package:flutter/material.dart';

abstract class MenuItemProvider {
  Widget get menuCustomWidget;
}


class MenuItem extends MenuItemProvider {
  Widget customWidget;


  MenuItem({
    required this.customWidget,
  });

  factory MenuItem.forList({
    required Widget image,
  }) {
    return MenuItem(
      customWidget: image,
    );
  }

  @override
  Widget get menuCustomWidget => customWidget;
}
