import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../common_model/categories_model.dart';

double getDifferenceInHours(TimeOfDay start, TimeOfDay end) {
  DateTime startDateTime = DateTime(2024, 1, 1, start.hour, start.minute);
  DateTime endDateTime = DateTime(2024, 1, 1, end.hour, end.minute);
  Duration difference = endDateTime.difference(startDateTime);
  return difference.inMinutes / 60;
}

List<double> getCustomItemsHeights(List<CategoriesModel> items) {
  final List<double> itemsHeights = [];
  for (int i = 0; i < items.length + 1; i++) {
    if (i != 1) {
      itemsHeights.add(Adaptive.sp(i == 0?20:22));
    }
    if (i == 1) {
      itemsHeights.add(0.5);
    }
  }
  return itemsHeights;
}
MenuItemStyleData menuItemStyleData(List<CategoriesModel> items) {
  return MenuItemStyleData(
    customHeights: getCustomItemsHeights(items),
    padding: EdgeInsets.zero,
  );
}
List<DropdownMenuItem<CategoriesModel>> addDividersAfterItems({
  required List<CategoriesModel> items,
  required double fontSize
}) {
  final List<DropdownMenuItem<CategoriesModel>> menuItems = [];
  for (final CategoriesModel item in items) {
    int index = items.indexOf(item);
    menuItems.addAll(
      [
        DropdownMenuItem<CategoriesModel>(
          value: item,
          enabled: index > 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  item.name,
                  style: GoogleFonts.nunitoSans(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize,
                  ),
                ),
              ],
            )
          ),
        ),
        // If it's last item, we will not add Divider after it.
        if (item == items.first)
          const DropdownMenuItem<CategoriesModel>(
            enabled: false,
            child: Divider(
              color: secondaryColor
            ),
          ),
      ],
    );
  }
  return menuItems;
}
