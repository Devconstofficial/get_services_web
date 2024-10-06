import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_services/gen/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../bloc/categories_bloc.dart';

class CategoriesForm extends StatefulWidget {
  const CategoriesForm({super.key});

  @override
  State<CategoriesForm> createState() => _CategoriesFormState();
}

class _CategoriesFormState extends State<CategoriesForm> {

  PaginatorController paginatorController = PaginatorController();
  late CategoriesBloc categoriesBloc;

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
                  SizedBox(height: Adaptive.sp(14)),

                  SizedBox(height: Adaptive.sp(14)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          categoriesBloc.add(CategoriesEvent.changeDeleteMode(value: state.isDeletionMode?false:true));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(24)),
                          decoration: BoxDecoration(
                            color: primaryColor,
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
                          categoriesBloc.add(CategoriesEvent.changeDeleteMode(value: state.isDeletionMode?false:true));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(24)),
                          decoration: BoxDecoration(
                              color: primaryColor,
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
                  SizedBox(height: Adaptive.sp(20)),
                ],
              ),
            );
          },
        );
      },
    );
  }

}