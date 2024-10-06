import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_services/components/side_bar/bloc/side_bar_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/color_constant.dart';

class SideBarWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const SideBarWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context,constraint) {
          return BlocBuilder<SideBarBloc, SideBarState>(
              builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:  Adaptive.sp(18),
                            vertical: Adaptive.sp(16)
                          ),
                          child: Image.asset(Assets.images.sidebarLogo.path),
                        ),
                        Column(
                          children: state.items.map((e) {
                            int index = state.items.indexOf(e);
                            bool isHovered = index == state.hoveredIndex;
                            bool isSelected = index == state.selectedIndex;

                            return MouseRegion(
                              onEnter: (_) {
                                context.read<SideBarBloc>().add(SideBarEvent.setSideBarHoverIndex(hoveredIndex: index));

                              },
                              onExit: (_) {
                                context.read<SideBarBloc>().add(const SideBarEvent.setSideBarHoverIndex(hoveredIndex: null));
                              },
                              cursor: SystemMouseCursors.click, // Change the cursor to pointer
                              child: GestureDetector(
                                onTap: (){
                                  context.read<SideBarBloc>().add(SideBarEvent.setSideBarIndex(index: index));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: Adaptive.sp(23),
                                      width: Adaptive.sp(10),
                                      decoration: BoxDecoration(
                                        color: isSelected || isHovered ? primaryColor : Colors.white, // Apply hover effect
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    SizedBox(width: Adaptive.sp(12)),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: Adaptive.sp(16)),
                                        height: Adaptive.sp(23),
                                        decoration: BoxDecoration(
                                          color: isSelected || isHovered ? primaryColor : Colors.white, // Apply hover effect
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        width: double.infinity,
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Text(
                                                e,
                                                style: GoogleFonts.nunitoSans(
                                                  color: isSelected || isHovered ? Colors.white : primaryColor,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: Adaptive.sp(12)),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),

                        const Spacer(),
                        Row(
                          children: [
                            Container(
                              height: Adaptive.sp(24),
                              width: Adaptive.sp(10),
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                            ),
                            SizedBox(width: Adaptive.sp(12),),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: Adaptive.sp(16)),
                                height: Adaptive.sp(30),
                                decoration: BoxDecoration(
                                    color:  Colors.white,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                width: double.infinity,
                                child: Center(
                                  child: Row(
                                    children: [
                                      Text("Logout",
                                          style: GoogleFonts.nunitoSans(
                                              color: primaryColor,
                                              fontWeight: FontWeight.bold
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: Adaptive.sp(12),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: charcoalLightGray,
                    width: 0.9,
                  )
                ],
              );
            }
          );
        }
      ),
    );
  }
}

