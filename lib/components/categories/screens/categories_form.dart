import 'package:data_table_2/data_table_2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_services/components/categories/model/categories_model.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../gen/assets.gen.dart';
import '../bloc/categories_bloc.dart';

class CategoriesForm extends StatefulWidget {
  const CategoriesForm({super.key});

  @override
  State<CategoriesForm> createState() => _CategoriesFormState();
}

class _CategoriesFormState extends State<CategoriesForm> {
  Uint8List? _bytes;
  PaginatorController paginatorController = PaginatorController();
  late CategoriesBloc categoriesBloc;

  MenuItemStyleData _menuItemStyleData(List<CategoriesData> items) {
    return MenuItemStyleData(
      customHeights: _getCustomItemsHeights(items),
      padding: EdgeInsets.zero,
    );
  }

  List<double> _getCustomItemsHeights(List<CategoriesData> items) {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(Adaptive.sp(18));
      }
      if (i.isOdd) {
        itemsHeights.add(2);
      }
    }
    return itemsHeights;
  }

  List<DropdownMenuItem<CategoriesData>> _addDividersAfterItems(
      {required List<CategoriesData> items, required double fontSize}) {
    final List<DropdownMenuItem<CategoriesData>> menuItems = [];
    for (final CategoriesData item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<CategoriesData>(
            value: item,
            enabled: true,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  item.category,
                  style: GoogleFonts.nunitoSans(
                    color: primaryColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<CategoriesData>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return menuItems;
  }

  @override
  void initState() {
    super.initState();
    paginatorController.addListener(() {
      setState(() {});
    });
    categoriesBloc = context.read<CategoriesBloc>();
    categoriesBloc.add(const CategoriesEvent.fetchCategoriesAndServices());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          );
        }

        // Show message if categories are empty
        if (state.categories.isEmpty) {
          return Center(
            child: Text(
              "No categories available",
              style: GoogleFonts.nunitoSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          );
        }

        return LayoutBuilder(
          builder: (context, constraint) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Adaptive.sp(14), horizontal: Adaptive.sp(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "categories".tr(),
                    style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Adaptive.sp(12)),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: appBlackColor.withOpacity(0.4),
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: state.categories.take(6).map((e) {
                                return categoryTile(e, state);
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: Adaptive.sp(12)),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: appBlackColor.withOpacity(0.4),
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                  children:
                                      state.categories.skip(6).take(2).map((e) {
                                    return categoryTile(e, state);
                                  }).toList(),
                                ),
                                if (!state.isDeletionModeCategory &&
                                    !state.isDeletionModeSubcategory) ...[
                                  SizedBox(height: Adaptive.sp(20)),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _bytes = null;
                                      });
                                      _addCategoryForm(constraint);
                                    },
                                    child: Container(
                                      width: Adaptive.sp(44),
                                      padding: EdgeInsets.symmetric(
                                          vertical: Adaptive.sp(6)),
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: Adaptive.sp(22),
                                      child: Center(
                                        child: Text(
                                          "addCategory".tr(),
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Adaptive.sp(12)),
                                  InkWell(
                                    onTap: () {
                                      _addSubCategoryForm(constraint);
                                    },
                                    child: Container(
                                      width: Adaptive.sp(44),
                                      padding: EdgeInsets.symmetric(
                                          vertical: Adaptive.sp(6)),
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: Adaptive.sp(22),
                                      child: Center(
                                        child: Text(
                                          "addSubCategory".tr(),
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Adaptive.sp(20)),
                                ]
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: Adaptive.sp(14)),
                  if (!state.isDeletionModeCategory &&
                      !state.isDeletionModeSubcategory) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            categoriesBloc.add(
                                CategoriesEvent.changeDeleteModeCategory(
                                    value: state.isDeletionModeCategory
                                        ? false
                                        : true));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Adaptive.sp(6),
                                horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                color: state.isDeletionModeCategory
                                    ? Colors.red
                                    : primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text(
                                "removeCategory".tr(),
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: Adaptive.sp(12)),
                        InkWell(
                          onTap: () {
                            categoriesBloc.add(
                                CategoriesEvent.changeDeleteModeSubCategory(
                                    value: state.isDeletionModeSubcategory
                                        ? false
                                        : true));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Adaptive.sp(6),
                                horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                color: state.isDeletionModeSubcategory
                                    ? Colors.red
                                    : primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text(
                                "removeSubcategory".tr(),
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (state.isDeletionModeCategory ||
                      state.isDeletionModeSubcategory) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            categoriesBloc.add(
                                const CategoriesEvent.changeDeleteModeCategory(
                                    value: false));
                            categoriesBloc.add(const CategoriesEvent
                                .changeDeleteModeSubCategory(value: false));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: Adaptive.sp(6),
                                horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(10)),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text(
                                "cancel".tr(),
                                style: GoogleFonts.nunitoSans(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(width: Adaptive.sp(12)),
                        // InkWell(
                        //   onTap: () {
                        //     categoriesBloc.add(
                        //         const CategoriesEvent.changeDeleteModeCategory(
                        //             value: false));
                        //     categoriesBloc.add(const CategoriesEvent
                        //         .changeDeleteModeSubCategory(value: false));
                        //   },
                        //   child: Container(
                        //     padding: EdgeInsets.symmetric(
                        //         vertical: Adaptive.sp(6),
                        //         horizontal: Adaptive.sp(24)),
                        //     decoration: BoxDecoration(
                        //         color: primaryColor,
                        //         borderRadius: BorderRadius.circular(10)),
                        //     height: Adaptive.sp(22),
                        //     child: Center(
                        //       child: Text(
                        //         "applyNow".tr(),
                        //         style: GoogleFonts.nunitoSans(
                        //             color: Colors.white,
                        //             fontWeight: FontWeight.w600,
                        //             fontSize: 12.sp),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                  SizedBox(height: Adaptive.sp(20)),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget categoryTile(CategoriesData e, CategoriesState state) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            leading: Container(
              padding: EdgeInsets.all(Adaptive.sp(10)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: borderColor)),
              child: Image.network(
                // e.imagePath,
                "https://via.placeholder.com/150",
                width: Adaptive.sp(18),
                // errorBuilder: (context, error, stackTrace) {
                //   return Icon(Icons.broken_image,
                //       size: getHeight(32), color: Colors.grey);
                // },
                // loadingBuilder: (context, child, loadingProgress) {
                //   if (loadingProgress == null) return child;
                //   return CircularProgressIndicator(
                //     value: loadingProgress.expectedTotalBytes != null
                //         ? loadingProgress.cumulativeBytesLoaded /
                //             (loadingProgress.expectedTotalBytes ?? 1)
                //         : null,
                //   );
                // },
              ),
            ),
            trailing: state.isDeletionModeCategory
                ? Container(
                    decoration: BoxDecoration(
                        color: softPinkColor,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: lightGrayColor)),
                    child: state.deletingCategoryId == e.categoryId
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: primaryColor,
                              ),
                            ),
                          )
                        : IconButton(
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            visualDensity:
                                const VisualDensity(horizontal: 2, vertical: 2),
                            icon: SvgPicture.asset(Assets.images.binIcon),
                            onPressed: () {
                              context.read<CategoriesBloc>().add(
                                  CategoriesEvent.deleteCategory(
                                      categoryId: e.categoryId));
                            }),
                  )
                : null,
            tilePadding: EdgeInsets.symmetric(
                vertical: Adaptive.sp(10), horizontal: Adaptive.sp(12)),
            title: Text(
              e.category,
              style: GoogleFonts.nunito(
                fontSize: 11.5.sp,
                color: appBlackColor.withOpacity(0.9),
                fontWeight: FontWeight.w600,
              ),
            ),
            children: e.subCategory
                .map((subcategory) => Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Adaptive.sp(0),
                          horizontal: Adaptive.sp(12)),
                      child: ListTile(
                        trailing: state.isDeletionModeSubcategory
                            ? Container(
                                decoration: BoxDecoration(
                                    color: softPinkColor,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: lightGrayColor)),
                                child: state.deletingSubCategoryId ==
                                        subcategory.subCategoryId
                                    ? const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: 16,
                                          height: 16,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            color: primaryColor,
                                          ),
                                        ),
                                      )
                                    : IconButton(
                                        constraints: const BoxConstraints(),
                                        padding: EdgeInsets.zero,
                                        visualDensity: const VisualDensity(
                                            horizontal: 2, vertical: 2),
                                        icon: SvgPicture.asset(
                                            Assets.images.binIcon),
                                        onPressed: () {
                                          context.read<CategoriesBloc>().add(
                                                CategoriesEvent
                                                    .deleteSubCategory(
                                                  subCategoryId:
                                                      subcategory.subCategoryId,
                                                ),
                                              );
                                        }),
                              )
                            : null,
                        title: Text(
                          subcategory.subCategoryName,
                          style: GoogleFonts.nunito(
                            fontSize: 11.25.sp,
                            color: appBlackColor.withOpacity(0.9),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        Container(
          height: 1,
          color: lightGrayColor.withOpacity(0.5),
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ],
    );
  }

  Future<void> _addCategoryForm(BoxConstraints constraint) async {
    TextEditingController controller = TextEditingController();
    bool isLoading = false;

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, addState) {
            return Dialog(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  width: Adaptive.sp(66),
                  padding: EdgeInsets.symmetric(
                      vertical: Adaptive.sp(12), horizontal: Adaptive.sp(24)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: appBlackColor.withOpacity(0.4),
                        offset: const Offset(0, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "addCategory".tr(),
                        style: GoogleFonts.nunitoSans(
                            fontSize: 12.5.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: Adaptive.sp(8)),
                      Text(
                        "attachImage".tr(),
                        style: GoogleFonts.nunitoSans(
                            fontSize: 11.sp,
                            color: appBlackColor,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: Adaptive.sp(8)),
                      InkWell(
                        onTap: () async {
                          FilePickerResult? result =
                              await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['jpg', 'png', 'jpeg'],
                          );
                          if (result != null) {
                            addState(() {
                              _bytes = result.files.first.bytes!;
                            });
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: borderColor, width: 1),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: appBlackColor.withOpacity(0.4),
                                  offset: const Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              SizedBox(height: Adaptive.sp(12)),
                              Text(
                                "attachImage1".tr(),
                                style: GoogleFonts.nunitoSans(
                                    fontSize: 11.sp,
                                    color: borderColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: Adaptive.sp(8)),
                              Image.asset(
                                Assets.images.addImage.path,
                                width: Adaptive.sp(18),
                              ),
                              SizedBox(height: Adaptive.sp(12)),
                            ],
                          ),
                        ),
                      ),
                      if (_bytes != null) ...[
                        SizedBox(height: Adaptive.sp(12)),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.memory(_bytes!,
                                    fit: BoxFit.fitWidth,
                                    width: Adaptive.sp(40))),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              visualDensity: const VisualDensity(
                                  vertical: -2, horizontal: -2),
                              onPressed: () async {
                                addState(() {
                                  _bytes = null;
                                });
                              },
                              icon: SvgPicture.asset(
                                Assets.images.close,
                                width: Adaptive.sp(12),
                              ),
                            ),
                          ],
                        )
                      ],
                      SizedBox(height: Adaptive.sp(12)),
                      TextField(
                        controller: controller,
                        cursorColor: primaryColor,
                        textAlignVertical: TextAlignVertical.center,
                        style: GoogleFonts.nunitoSans(
                            color: primaryColor,
                            fontSize: constraint.maxWidth >= 824
                                ? 12.sp
                                : constraint.maxWidth < 824 &&
                                        constraint.maxWidth >= 750
                                    ? 12.5.sp
                                    : 13.sp),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          isCollapsed: true,
                          isDense: true,
                          constraints: const BoxConstraints(),
                          prefixIconConstraints: const BoxConstraints(),
                          hintText: "enterCategoryName".tr(),
                          hintStyle: GoogleFonts.nunitoSans(
                              color: borderColor,
                              fontSize: constraint.maxWidth >= 824
                                  ? 12.sp
                                  : constraint.maxWidth < 824 &&
                                          constraint.maxWidth >= 750
                                      ? 12.5.sp
                                      : 13.sp),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: Adaptive.sp(constraint.maxWidth >= 824
                                ? 11
                                : constraint.maxWidth >= 750
                                    ? 12
                                    : constraint.maxWidth >= 650
                                        ? 13
                                        : 14),
                            horizontal: Adaptive.sp(12),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: borderColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: borderColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: borderColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      SizedBox(height: Adaptive.sp(12)),
                      isLoading
                          ? const CircularProgressIndicator(
                              color: primaryColor,
                            )
                          : Center(
                              child: InkWell(
                                onTap: () {
                                  if (_bytes != null) {
                                    addState(() {
                                      isLoading = true;
                                    });
                                    if (kIsWeb) {
                                      categoriesBloc
                                          .add(CategoriesEvent.addCategory(
                                        name: controller.text.trim(),
                                        imageFile: _bytes,
                                      ));
                                      addState(() {
                                        isLoading = false;
                                      });
                                    }
                                  }
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Adaptive.sp(8),
                                      horizontal: Adaptive.sp(16)),
                                  decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: primaryColor)),
                                  child: Text(
                                    "addNow".tr(),
                                    style: GoogleFonts.nunitoSans(
                                      color: Colors.white,
                                      fontSize: 11.5.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            )
                    ],
                  ),
                ),
              ),
            );
          });
        });
  }

  Future<void> _addSubCategoryForm(BoxConstraints constraint) async {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final TextEditingController serviceName = TextEditingController();
    String? selectedCategoryId;

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BlocProvider.value(
            value: categoriesBloc,
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
                builder: (context, state) {
              return StatefulBuilder(builder: (context, addState) {
                return Dialog(
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: Adaptive.sp(66),
                      padding: EdgeInsets.symmetric(
                          vertical: Adaptive.sp(12),
                          horizontal: Adaptive.sp(24)),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: appBlackColor.withOpacity(0.4),
                            offset: const Offset(0, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Form(
                        key: formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "addSubCategory".tr(),
                                style: GoogleFonts.nunitoSans(
                                    fontSize: 12.5.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: Adaptive.sp(14)),
                              DropdownButtonFormField2<CategoriesData>(
                                validator: (value) {
                                  if (state.categories
                                      .where((e) => e.isUpdating)
                                      .isEmpty) {
                                    return "errorSubcategory".tr();
                                  }
                                  return null;
                                },
                                customButton: Row(
                                  children: [
                                    Text(
                                      state.categories
                                              .where((e) => e.isUpdating)
                                              .isNotEmpty
                                          ? state.categories
                                              .firstWhere((e) => e.isUpdating)
                                              .category
                                          : "selectCategory".tr(),
                                      style: GoogleFonts.nunitoSans(
                                        color: state.categories
                                                .where((e) => e.isUpdating)
                                                .isNotEmpty
                                            ? primaryColor
                                            : borderColor,
                                        fontSize: constraint.maxWidth >= 824
                                            ? 12.sp
                                            : constraint.maxWidth < 824 &&
                                                    constraint.maxWidth >= 750
                                                ? 12.5.sp
                                                : 13.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: primaryColor,
                                      size: Adaptive.sp(14),
                                    ),
                                  ],
                                ),
                                value: state.categories
                                        .where((e) => e.isUpdating)
                                        .isNotEmpty
                                    ? state.categories
                                        .firstWhere((e) => e.isUpdating)
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
                                menuItemStyleData:
                                    _menuItemStyleData(state.categories),
                                items: _addDividersAfterItems(
                                    items: state.categories, fontSize: 11.5.sp),
                                onChanged: (text) {
                                  if (text != null) {
                                    categoriesBloc.add(
                                      CategoriesEvent.setCurrentCategory(
                                        index: state.categories.indexOf(text),
                                      ),
                                    );
                                    selectedCategoryId = text.categoryId;
                                  }
                                },
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  isCollapsed: true,
                                  isDense: true,
                                  constraints: const BoxConstraints(),
                                  prefixIconConstraints: const BoxConstraints(),
                                  hintStyle: GoogleFonts.nunitoSans(
                                      color: borderColor,
                                      fontSize: constraint.maxWidth >= 824
                                          ? 12.sp
                                          : constraint.maxWidth < 824 &&
                                                  constraint.maxWidth >= 750
                                              ? 12.5.sp
                                              : 13.sp),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical:
                                        Adaptive.sp(constraint.maxWidth >= 824
                                            ? 11
                                            : constraint.maxWidth >= 750
                                                ? 12
                                                : constraint.maxWidth >= 650
                                                    ? 13
                                                    : 14),
                                    horizontal: Adaptive.sp(12),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              SizedBox(height: Adaptive.sp(12)),
                              TextFormField(
                                controller: serviceName,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "errorSubcategory".tr();
                                  }
                                  return null;
                                },
                                cursorColor: primaryColor,
                                textAlignVertical: TextAlignVertical.center,
                                style: GoogleFonts.nunitoSans(
                                    color: primaryColor,
                                    fontSize: constraint.maxWidth >= 824
                                        ? 12.sp
                                        : constraint.maxWidth < 824 &&
                                                constraint.maxWidth >= 750
                                            ? 12.5.sp
                                            : 13.sp),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  isCollapsed: true,
                                  isDense: true,
                                  constraints: const BoxConstraints(),
                                  prefixIconConstraints: const BoxConstraints(),
                                  hintText: "enterCategoryName".tr(),
                                  hintStyle: GoogleFonts.nunitoSans(
                                      color: borderColor,
                                      fontSize: constraint.maxWidth >= 824
                                          ? 12.sp
                                          : constraint.maxWidth < 824 &&
                                                  constraint.maxWidth >= 750
                                              ? 12.5.sp
                                              : 13.sp),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical:
                                        Adaptive.sp(constraint.maxWidth >= 824
                                            ? 11
                                            : constraint.maxWidth >= 750
                                                ? 12
                                                : constraint.maxWidth >= 650
                                                    ? 13
                                                    : 14),
                                    horizontal: Adaptive.sp(12),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: borderColor,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              SizedBox(height: Adaptive.sp(12)),
                              state.isAddingService
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                        color: primaryColor,
                                      ),
                                    )
                                  : Center(
                                      child: InkWell(
                                        onTap: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            categoriesBloc
                                                .add(CategoriesEvent.addService(
                                              categoryId: selectedCategoryId!,
                                              serviceName:
                                                  serviceName.text.trim(),
                                            ));
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: Adaptive.sp(8),
                                              horizontal: Adaptive.sp(16)),
                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: primaryColor)),
                                          child: Text(
                                            "addNow".tr(),
                                            style: GoogleFonts.nunitoSans(
                                              color: Colors.white,
                                              fontSize: 11.5.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              });
            }),
          );
        });
  }
}
