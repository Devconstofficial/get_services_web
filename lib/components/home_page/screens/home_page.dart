import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common_model/categories_model.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/color_constant.dart';
import '../../side_bar/bloc/side_bar_bloc.dart';
import '../../side_bar/screens/side_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
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
    required SideBarState state,
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
                    if(index > 0)...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(state.languageImages[index-1],
                          width: Adaptive.sp(16),),
                      ),
                      SizedBox(width: Adaptive.sp(12),)
                    ],
                    Text(
                      item.name,
                      style: GoogleFonts.nunitoSans(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: fontSize,
                      ),
                    ),
                    if(item.isSelected)...[
                      Spacer(),
                      SvgPicture.asset(Assets.images.check,
                        width: Adaptive.sp(12),)
                    ]
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SideBarBloc, SideBarState>(
        builder: (context, state) {
          return LayoutBuilder(
              builder: (context,constraint) {
                print(constraint.maxWidth);
                return Row(
                  children: [
                    if(constraint.maxWidth >= 978)...[
                    SizedBox(
                        width: constraint.maxWidth * 0.19,
                        child: const SideBarWidget())],
                    Expanded(
                      child: Scaffold(
                        backgroundColor: scaffoldColor,
                        drawer: constraint.maxWidth >= 978?null:SizedBox(
                            width: constraint.maxWidth * 0.33,
                            child: const SideBarWidget()),
                        appBar: AppBar(
                          backgroundColor: Colors.white,
                          elevation: 0, // Remove the default shadow
                          title: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Adaptive.sp(24)),
                            child: TextField(
                              cursorColor: primaryColor,
                              textAlignVertical: TextAlignVertical.center,
                              style: GoogleFonts.nunitoSans(
                                color: primaryColor,
                                  fontSize: constraint.maxWidth >= 824?12.sp:
                                  constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:
                                  constraint.maxWidth < 750 &&  constraint.maxWidth >= 650?13.sp:14.sp
                              ),
                              decoration: InputDecoration(
                                fillColor: secondaryColor,
                                filled: true,
                                isCollapsed: true,
                                isDense: true,
                                constraints: BoxConstraints(),
                                prefixIconConstraints: BoxConstraints(),
                                hintText: "Search",
                                hintStyle: GoogleFonts.nunitoSans(
                                  color: Colors.grey,
                                    fontSize: constraint.maxWidth >= 824?12.sp:
                                    constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:
                                    constraint.maxWidth < 750 &&  constraint.maxWidth >= 650?13.sp:14.sp
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: Adaptive.sp(12)),
                                  child: Icon(
                                    CupertinoIcons.search,
                                    color: Colors.grey,
                                    size: Adaptive.sp(14),
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: Adaptive.sp(constraint.maxWidth >= 824?11:
                                  constraint.maxWidth >= 750?12:
                                  constraint.maxWidth >= 650?13:14),
                                  horizontal: Adaptive.sp(0),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: charcoalLightGray,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: charcoalLightGray,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: charcoalLightGray,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          actions: constraint.maxWidth > 800? [
                            SizedBox(width: Adaptive.sp(16)),
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: SvgPicture.asset(Assets.images.bell),
                                ),
                                Positioned(
                                  top: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      state.notificationCount.toString(),
                                      style: GoogleFonts.nunitoSans(
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: Adaptive.sp(16)),
                            SizedBox(
                              width: Adaptive.sp(38),
                              child: MouseRegion(
                                onEnter: (_) {
                                  context.read<SideBarBloc>().add(SideBarEvent.updateIsLanguageMenuHover(isLanguageMenuHover: true));
                                },
                                onExit: (_) {
                                  context.read<SideBarBloc>().add(SideBarEvent.updateIsLanguageMenuHover(isLanguageMenuHover: false));
                                },
                                child: Center(
                                  child: DropdownButtonFormField2<CategoriesModel>(
                                    customButton: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(6),
                                            clipBehavior: Clip.hardEdge,
                                            child: Image.asset(state.languageImages[state.languages.indexOf(state.languages.firstWhere((e) => e.isSelected)) - 1]),
                                          ),
                                        ),
                                        Text(
                                          state.languages.firstWhere((e) => e.isSelected).name,
                                          style: GoogleFonts.nunitoSans(
                                            color: primaryColor,
                                            fontSize: 11.5.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_sharp,
                                          color: primaryColor,
                                          size: Adaptive.sp(14),
                                        ),
                                      ],
                                    ),
                                    value: state.languages
                                        .where((e) => e.isSelected)
                                        .isNotEmpty
                                        ? state.languages
                                        .firstWhere((e) => e.isSelected)
                                        : null,
                                    dropdownStyleData: DropdownStyleData(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.white),
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsets.zero,
                                      useSafeArea: false,
                                      scrollPadding: EdgeInsets.zero,
                                    ),
                                    isDense: true,
                                    isExpanded: true,
                                    buttonStyleData: const ButtonStyleData(
                                      padding: EdgeInsets.zero,
                                    ),
                                    style: GoogleFonts.openSans(
                                        color: Colors.white, fontSize: 15.75.sp),
                                    menuItemStyleData: menuItemStyleData(state.languages),
                                    items: addDividersAfterItems(items: state.languages,state:state, fontSize: 11.5.sp),
                                    onChanged: (text){
                                      if(text != null){
                                        context.read<SideBarBloc>().add(SideBarEvent.setSideBarLanguageIndexIndex(index: state.languages.indexOf(text),value: text.isSelected?false:true));
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(Assets.images.userAvatar.path),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Moni Roy",
                                  style: GoogleFonts.nunitoSans(
                                    color: primaryColor,
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Admin",
                                  style: GoogleFonts.nunitoSans(
                                    color: primaryColor,
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: Adaptive.sp(24)),
                          ]:null,
                          bottom: PreferredSize(
                            preferredSize: Size.fromHeight(1.0), // Height of the bottom border
                            child: Container(
                              color: charcoalLightGray, // Color of the bottom border
                              height: 1.0, // Thickness of the bottom border
                            ),
                          ),
                        ),

                        body: state.pages[state.selectedIndex],
                      ),
                    ),
                  ],
                );
              }
          );
        }
    );
  }
}