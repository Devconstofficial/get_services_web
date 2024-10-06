import 'package:flutter/material.dart';
import 'popup_menu.dart';

import 'menu_item.dart';

class MenuItemWidget extends StatefulWidget {
  final MenuItemProvider item;
  // 是否要显示右边的分隔线
  final bool showLine;
  final Color lineColor;
  final Color backgroundColor;
  final Color highlightColor;
  final double itemWidth;
  final double itemHeight;

  final Function(MenuItemProvider item)? clickCallback;

  const MenuItemWidget({super.key,
    this.itemWidth = 72.0,
    this.itemHeight = 65.0,
    required this.item,
    this.showLine = true,
    this.clickCallback,
    this.lineColor = Colors.white,
    required this.backgroundColor,
    required this.highlightColor,
  });

  @override
  State<StatefulWidget> createState() {
    return _MenuItemWidgetState();
  }
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  var highlightColor = Color(0x55000000);
  var color = Color(0xff232323);

  @override
  void initState() {
    color = widget.backgroundColor;
    highlightColor = widget.highlightColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        color = highlightColor;
        setState(() {});
      },
      onTapUp: (details) {
        color = widget.backgroundColor;
        setState(() {});
      },
      onLongPressEnd: (details) {
        color = widget.backgroundColor;
        setState(() {});
      },
      onTap: () {
        if (widget.clickCallback != null) {
          widget.clickCallback!(widget.item);
        }
      },
      child: Container(
          width: widget.itemWidth,
          height: widget.itemHeight,
          decoration: BoxDecoration(
              color: color,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _createContent(),
            ],
          )),
    );
  }

  Widget _createContent() {
    return Material(
      color: Colors.transparent,
      child:widget.item.menuCustomWidget,
    );
  }
}
