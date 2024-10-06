import 'package:flutter/material.dart';
import 'menu_layout.dart';

import 'popup_menu.dart';

/// list menu layout
class ListMenuLayout implements MenuLayout {
  final MenuConfig config;
  final List<MenuItemProvider> items;
  final VoidCallback onDismiss;
  final BuildContext context;
  final MenuClickCallback? onClickMenu;

  ListMenuLayout({
    required this.config,
    required this.items,
    required this.onDismiss,
    required this.context,
    this.onClickMenu,
  });

  @override
  Widget build() {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    color: config.backgroundColor,

                    borderRadius: BorderRadius.circular(10.0)),
                child: SingleChildScrollView(
                  child: Column(
                    children: items.map((item) {
                      int index = items.indexOf(item);
                      return item.menuCustomWidget;
                    }).toList(),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  @override
  double get height => config.itemHeight * items.length;

  @override
  double get width => config.itemWidth;
}
