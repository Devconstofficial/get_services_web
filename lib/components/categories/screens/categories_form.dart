import 'dart:typed_data';

import 'package:data_table_2/data_table_2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
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
  List<DropdownMenuItem<CategoriesData>> _addDividersAfterItems({required List<CategoriesData> items, required double fontSize}) {
    final List<DropdownMenuItem<CategoriesData>> menuItems = [];
    for (final CategoriesData item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<CategoriesData>(
            value: item,
            enabled: true,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child:
                Text(
                  item.category,
                  style: GoogleFonts.nunitoSans(
                    color: primaryColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
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
    paginatorController.addListener((){
      setState(() {});
    });
    categoriesBloc = context.read<CategoriesBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraint) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: Adaptive.sp(14),horizontal: Adaptive.sp(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Categories",
                    style: GoogleFonts.nunitoSans(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Adaptive.sp(12)),
                  Expanded(child: Row(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: appBlackColor
                                    .withOpacity(0.4),
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                              ),
                            ],

                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: state.categories
                                  .take(6)
                                  .map((e) {
                                    return categoryTile(e,state);
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
                                color: appBlackColor
                                    .withOpacity(0.4),
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                              ),
                            ],

                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                  children: state.categories
                                      .skip(6)
                                      .take(2)
                                      .map((e) {
                                    return categoryTile(e,state);
                                  }).toList(),
                                ),
                                if(!state.isDeletionModeCategory && !state.isDeletionModeSubcategory)...[
                                  SizedBox(height: Adaptive.sp(20)),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        _bytes = null;
                                      });
                                      _addCategoryForm(constraint);
                                    },
                                    child: Container(
                                      width: Adaptive.sp(44),
                                      padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6)),
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      height: Adaptive.sp(22),
                                      child: Center(
                                        child: Text("Add Category",
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp
                                          ),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Adaptive.sp(12)),
                                  InkWell(
                                    onTap: (){
                                      _addSubCategoryForm(constraint);
                                    },
                                    child: Container(
                                      width: Adaptive.sp(44),
                                      padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6)),
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      height: Adaptive.sp(22),
                                      child: Center(
                                        child: Text("Add Subcategory",
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp
                                          ),),
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
                  if(!state.isDeletionModeCategory && !state.isDeletionModeSubcategory)...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            categoriesBloc.add(CategoriesEvent.changeDeleteModeCategory(value: state.isDeletionModeCategory?false:true));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                color: state.isDeletionModeCategory?Colors.red:primaryColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text("Remove Category",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp
                                ),),
                            ),
                          ),
                        ),
                        SizedBox(width: Adaptive.sp(12)),
                        InkWell(
                          onTap: (){
                            categoriesBloc.add(CategoriesEvent.changeDeleteModeSubCategory(value: state.isDeletionModeSubcategory?false:true));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                color: state.isDeletionModeSubcategory?Colors.red:primaryColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text("Remove Subcategory",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp
                                ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  if(state.isDeletionModeCategory || state.isDeletionModeSubcategory)...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            categoriesBloc.add(CategoriesEvent.changeDeleteModeCategory(value: false));
                            categoriesBloc.add(CategoriesEvent.changeDeleteModeSubCategory(value: false));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                border: Border.all(color:primaryColor),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text("Cancel",
                                style: GoogleFonts.nunitoSans(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp
                                ),),
                            ),
                          ),
                        ),
                        SizedBox(width: Adaptive.sp(12)),
                        InkWell(
                          onTap: (){
                            categoriesBloc.add(CategoriesEvent.changeDeleteModeCategory(value: false));
                            categoriesBloc.add(CategoriesEvent.changeDeleteModeSubCategory(value: false));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            height: Adaptive.sp(22),
                            child: Center(
                              child: Text("Apply Now",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp
                                ),),
                            ),
                          ),
                        ),
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
  Widget categoryTile(CategoriesData e,CategoriesState state){
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            leading: Container(
              padding: EdgeInsets.all(Adaptive.sp(10)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color:borderColor)
              ),
              child: SvgPicture.asset(
                e.imagePath,
                width: Adaptive.sp(18),
              ),
            ),
            trailing: state.isDeletionModeCategory?Container(
              decoration: BoxDecoration(
                  color: softPinkColor,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: lightGrayColor)
              ),
              child: IconButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 2,vertical: 2),
                  icon: SvgPicture.asset(Assets.images.binIcon), onPressed: () {
                // Add delete action here
              }),
            ):null,
            tilePadding: EdgeInsets.symmetric(vertical: Adaptive.sp(10),horizontal: Adaptive.sp(12)),
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
              padding:  EdgeInsets.symmetric(vertical: Adaptive.sp(0),horizontal: Adaptive.sp(12)),
              child: ListTile(
                trailing: state.isDeletionModeSubcategory?Container(
                  decoration: BoxDecoration(
                      color: softPinkColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: lightGrayColor)
                  ),
                  child: IconButton(
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.zero,
                      visualDensity: VisualDensity(horizontal: 2,vertical: 2),
                      icon: SvgPicture.asset(Assets.images.binIcon), onPressed: () {
                    // Add delete action here
                  }),
                ):null,
                title: Text(subcategory,
                  style: GoogleFonts.nunito(
                    fontSize: 11.25.sp,
                    color: appBlackColor.withOpacity(0.9),
                    fontWeight: FontWeight.w600,
                  ),),
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

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context,addState) {
              return Dialog(
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    width: Adaptive.sp(66),
                    padding: EdgeInsets.symmetric(vertical: Adaptive.sp(12),horizontal: Adaptive.sp(24)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: appBlackColor
                              .withOpacity(0.4),
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
                          "Add Category",
                          style: GoogleFonts.nunitoSans(fontSize: 12.5.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: Adaptive.sp(8)),
                        Text(
                          "Attach Image",
                          style: GoogleFonts.nunitoSans(fontSize: 11.sp,color: appBlackColor,fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: Adaptive.sp(8)),
                        InkWell(
                          onTap: () async {
                            FilePickerResult? result = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['jpg', 'png', 'jpeg'],
                            );
                            if(result != null){
                              addState(() {
                                _bytes = result.files.single.bytes!;
                              });
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: borderColor,
                                width: 1
                              ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: appBlackColor
                                        .withOpacity(0.4),
                                    offset: const Offset(0, 1),
                                    blurRadius: 2,
                                  ),
                                ],
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: Adaptive.sp(12)),
                                Text(
                                  "+ Attach Image",
                                  style: GoogleFonts.nunitoSans(fontSize: 11.sp,color: borderColor,fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: Adaptive.sp(8)),
                                Image.asset(Assets.images.addImage.path,
                                width: Adaptive.sp(18),),
                                SizedBox(height: Adaptive.sp(12)),

                              ],
                            ),
                          ),
                        ),
                        if(_bytes != null)...[
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
                                visualDensity: const VisualDensity(vertical: -2,horizontal: -2),
                                onPressed: () async {
                                  addState(() {
                                    _bytes = null;
                                  });
                                },
                                icon: SvgPicture.asset(Assets.images.close,width: Adaptive.sp(12),),
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
                              fontSize: constraint.maxWidth >= 824?12.sp:
                              constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:13.sp
                          ),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            isCollapsed: true,
                            isDense: true,
                            constraints: BoxConstraints(),
                            prefixIconConstraints: BoxConstraints(),
                            hintText: "Enter category name",
                            hintStyle: GoogleFonts.nunitoSans(
                                color: borderColor,
                                fontSize: constraint.maxWidth >= 824?12.sp:
                                constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:13.sp
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: Adaptive.sp(constraint.maxWidth >= 824?11:
                              constraint.maxWidth >= 750?12:
                              constraint.maxWidth >= 650?13:14),
                              horizontal: Adaptive.sp(12),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: borderColor,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: borderColor,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: borderColor,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),

                        SizedBox(height: Adaptive.sp(12)),
                        Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: Adaptive.sp(8),horizontal: Adaptive.sp(16)),

                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: primaryColor)
                              ),
                              child: Text(
                                "Add Now",
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
            }
          );
        });
  }
  Future<void> _addSubCategoryForm(BoxConstraints constraint) async {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    List<String> subCategories = [""];

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return BlocProvider.value(
            value: categoriesBloc,
            child: BlocBuilder<CategoriesBloc, CategoriesState>(
                builder: (context, state) {
                return StatefulBuilder(
                    builder: (context,addState) {
                      return Dialog(
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            width: Adaptive.sp(66),
                            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(12),horizontal: Adaptive.sp(24)),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: appBlackColor
                                      .withOpacity(0.4),
                                  offset: const Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ],

                            ),

                            child: Form(
                              key: _formKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Add Subcategory",
                                      style: GoogleFonts.nunitoSans(fontSize: 12.5.sp, fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: Adaptive.sp(14)),
                                    DropdownButtonFormField2<CategoriesData>(

                                      validator: (value){
                                        if (state.categories.where((e) => e.isUpdating).isEmpty) {
                                          return 'Please select a category';
                                        }
                                        return null;
                                      },
                                      customButton: Row(
                                        children: [
                                          Text(
                                            state.categories.where((e) => e.isUpdating).isNotEmpty?state.categories.firstWhere((e) => e.isUpdating).category:"Select Category",
                                            style: GoogleFonts.nunitoSans(
                                              color: state.categories.where((e) => e.isUpdating).isNotEmpty?primaryColor:borderColor,
                                              fontSize: constraint.maxWidth >= 824?12.sp:
                                              constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:13.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: primaryColor,
                                            size: Adaptive.sp(14),
                                          ),
                                        ],
                                      ),
                                      value: state.categories.where((e) => e.isUpdating).isNotEmpty?state.categories.firstWhere((e) => e.isUpdating): null,
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
                                      menuItemStyleData: _menuItemStyleData(state.categories),
                                      items: _addDividersAfterItems(items: state.categories, fontSize: 11.5.sp),
                                      onChanged: (text){
                                        if(text != null){
                                          categoriesBloc.add(CategoriesEvent.setCurrentCategory(index: state.categories.indexOf(text)));
                                        }
                                      },
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        isCollapsed: true,
                                        isDense: true,
                                        constraints: BoxConstraints(),
                                        prefixIconConstraints: BoxConstraints(),
                                        hintStyle: GoogleFonts.nunitoSans(
                                            color: borderColor,
                                            fontSize: constraint.maxWidth >= 824?12.sp:
                                            constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:13.sp
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          vertical: Adaptive.sp(constraint.maxWidth >= 824?11:
                                          constraint.maxWidth >= 750?12:
                                          constraint.maxWidth >= 650?13:14),
                                          horizontal: Adaptive.sp(12),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: borderColor,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: borderColor,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: borderColor,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),

                                    ...List.generate(subCategories.length, (index) {
                                      return Column(
                                        children: [
                                          SizedBox(height: Adaptive.sp(12)),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: TextFormField(
                                                  validator: (value){
                                                    if (value == null || value.isEmpty) {
                                                      return 'Please enter subcategory name';
                                                    }
                                                    return null;
                                                  },
                                                  cursorColor: primaryColor,
                                                  textAlignVertical: TextAlignVertical.center,
                                                  style: GoogleFonts.nunitoSans(
                                                      color: primaryColor,
                                                      fontSize: constraint.maxWidth >= 824?12.sp:
                                                      constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:13.sp
                                                  ),
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white,
                                                    filled: true,
                                                    isCollapsed: true,
                                                    isDense: true,
                                                    constraints: BoxConstraints(),
                                                    prefixIconConstraints: BoxConstraints(),
                                                    hintText: "Enter category name",
                                                    hintStyle: GoogleFonts.nunitoSans(
                                                        color: borderColor,
                                                        fontSize: constraint.maxWidth >= 824?12.sp:
                                                        constraint.maxWidth < 824 && constraint.maxWidth >= 750?12.5.sp:13.sp
                                                    ),
                                                    contentPadding: EdgeInsets.symmetric(
                                                      vertical: Adaptive.sp(constraint.maxWidth >= 824?11:
                                                      constraint.maxWidth >= 750?12:
                                                      constraint.maxWidth >= 650?13:14),
                                                      horizontal: Adaptive.sp(12),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: borderColor,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    enabledBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: borderColor,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: borderColor,
                                                      ),
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (index != 0)...[
                                                IconButton(
                                                  constraints: BoxConstraints(),
                                                  padding: EdgeInsets.zero,
                                                  visualDensity: VisualDensity(horizontal: 2,vertical: -4),
                                                  icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                                                  onPressed: () {
                                                    addState(() {
                                                      subCategories.removeAt(index); // Remove the subcategory at this index
                                                    });
                                                  },
                                                ),]
                                            ],
                                          ),
                                        ],
                                      );
                                    }),


                                    SizedBox(height: Adaptive.sp(8)),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: (){
                                          addState(() {
                                            subCategories.add("");
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(vertical: Adaptive.sp(8),horizontal: Adaptive.sp(8)),

                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Icon(Icons.add,color: Colors.white,),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: Adaptive.sp(12)),
                                    Center(
                                      child: InkWell(
                                        onTap: (){
                                          if (_formKey.currentState!.validate()) {
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(vertical: Adaptive.sp(8),horizontal: Adaptive.sp(16)),

                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Text(
                                            "Add Now",
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
                    }
                );
              }
            ),
          );
        });
  }
}