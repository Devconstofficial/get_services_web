import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/color_constant.dart';
import '../../dashboard/model/provider_request.dart';
import '../bloc/provider_bloc.dart';

class ProviderForm extends StatefulWidget {
  const ProviderForm({super.key});

  @override
  State<ProviderForm> createState() => _ProviderFormState();
}

class _ProviderFormState extends State<ProviderForm> {

  PaginatorController paginatorController = PaginatorController();
  late ProvidersBloc providersBloc;

  @override
  void initState() {
    super.initState();
    paginatorController.addListener((){
      setState(() {});
    });
    providersBloc = context.read<ProvidersBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProvidersBloc, ProvidersState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraint) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: Adaptive.sp(14),horizontal: Adaptive.sp(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Service Provider",
                    style: GoogleFonts.nunitoSans(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Adaptive.sp(14)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: softPinkColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: lightGrayColor,width: 0.6)
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: SvgPicture.asset(Assets.images.filter)),
                        SizedBox(width: 8,),
                        Container(
                          width: 0.6,
                          color: lightGrayColor,
                          height:Adaptive.sp(24)
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Adaptive.sp(12)),
                          child: Text("Filter By",
                            style: GoogleFonts.nunitoSans(fontSize: Adaptive.sp(11), fontWeight: FontWeight.bold),),
                        ),
                        Container(
                            width: 0.6,
                            color: lightGrayColor,
                            height:Adaptive.sp(24)
                        ),
                        InkWell(
                          onTap: (){
                            _displayDateDialog(state,constraint);
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(left: Adaptive.sp(12),right: Adaptive.sp(10)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(state.customStartDate != null?DateFormat("dd MMM yyyy").format(state.customStartDate??DateTime.now()):"Date",
                                  style: GoogleFonts.nunitoSans(fontSize: Adaptive.sp(11), fontWeight: FontWeight.bold),),
                                SizedBox(width: Adaptive.sp(8),),
                                Icon(Icons.keyboard_arrow_down_sharp,
                                size: Adaptive.sp(12),)
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: 0.6,
                            color: lightGrayColor,
                            height:Adaptive.sp(24)
                        ),
                        InkWell(
                          onTap: (){
                            _displayStatusDialog();
                          },
                          child: Padding(
                            padding:  EdgeInsets.only(left: Adaptive.sp(12),right: Adaptive.sp(10)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Provider Status",
                                  style: GoogleFonts.nunitoSans(fontSize: Adaptive.sp(11), fontWeight: FontWeight.bold),),
                                SizedBox(width: Adaptive.sp(8),),
                                Icon(Icons.keyboard_arrow_down_sharp,
                                  size: Adaptive.sp(12),)
                              ],
                            ),
                          ),
                        ),
                        if(state.customStartDate != null || state.providerStatus.where((e) => e.isSelected).isNotEmpty)...[
                          Container(
                              width: 0.6,
                              color: lightGrayColor,
                              height:Adaptive.sp(24)
                          ),
                          InkWell(
                            onTap: (){
                              providersBloc.add(const ProvidersEvent.resetFilter());
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(left: Adaptive.sp(12),right: Adaptive.sp(10)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.replay,
                                    color: Colors.red,
                                    size: Adaptive.sp(12),),
                                  SizedBox(width: Adaptive.sp(8),),
                                  Text("Reset Filter",
                                    style: GoogleFonts.nunitoSans(fontSize: Adaptive.sp(11), fontWeight: FontWeight.bold, color: Colors.red),),

                                ],
                              ),
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                  SizedBox(height: Adaptive.sp(14)),
                  Expanded(child: _buildProviderTable(state.providerRequests,state)),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildProviderTable(List<ProviderRequest> requests,ProvidersState state) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: Adaptive.sp(12),horizontal: Adaptive.sp(14)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(12)),
            constraints: BoxConstraints(
                minWidth: 800
            ),
            decoration: BoxDecoration(
                color: tableHeaderColor,

                borderRadius: BorderRadius.circular(100)
            ),
            child: Row(
              children: [
                Expanded(child: Center(child: Text('Provider ID', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold,
                  fontSize: 11.5.sp,)))),
                Expanded(child: Center(child: Text('Provider Name', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold,fontSize: 11.5.sp)))),
                Expanded(child: Center(child: Text('Location (City)', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold,fontSize: 11.5.sp)))),
                Expanded(child: Center(child: Text('Category', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold,fontSize: 11.5.sp)))),
                Expanded(child: Center(child: Text('Status', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold,fontSize: 11.5.sp)))),
                Expanded(child: Center(child: Text('Actions', style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold,fontSize: 11.5.sp)))),

              ],
            ),
          ),
          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: DividerThemeData(
                    color:lightGrayColor,
                    thickness: 0.6

                ),
                cardTheme: CardTheme(
                  elevation: 0,
                  color: Colors.white,
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              child: PaginatedDataTable2(
                horizontalMargin: 20,
                minWidth: 800,


                onPageChanged: (index){
                  print(index);
                  context.read<ProvidersBloc>().add(ProvidersEvent.changeCurrentTablePageIndex(index: index));
                },
                controller: paginatorController,
                fit: FlexFit.tight,

                sortArrowAlwaysVisible: true,
                dividerThickness: 0.6,
                headingRowHeight:0,
                autoRowsToHeight: true,
                hidePaginator: true,

                columns: const [
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                ],
                source: ProviderDataSource(requests),
                rowsPerPage: 5,



                showFirstLastButtons: false,

              ),
            ),
          ),
          SizedBox(height: Adaptive.sp(8),),
          if(paginatorController.isAttached)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        paginatorController.goToFirstPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)
                        ),
                        child: Row(
                          children: [
                            Text(
                              "First Page",
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(state.currentTablePageIndex > 0?0.8:0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: Adaptive.sp(8),),
                            Icon(
                              Icons.skip_previous,
                              color: colorDropdownGrey.withOpacity(state.currentTablePageIndex > 0?0.8:0.5),
                              size: Adaptive.sp(12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: Adaptive.sp(8),),
                    InkWell(
                      onTap: (){
                        paginatorController.goToPreviousPage();

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_sharp,
                              color: colorDropdownGrey.withOpacity(state.currentTablePageIndex > 0?0.8:0.5),
                              size: Adaptive.sp(12),
                            ),
                            SizedBox(width: Adaptive.sp(8),),
                            Text(
                              "Previous Page",
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(state.currentTablePageIndex > 0?0.8:0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Text("Showing ${(state.currentTablePageIndex+1)}-${  ((state.currentTablePageIndex) + paginatorController.rowsPerPage) < paginatorController.rowCount?(state.currentTablePageIndex) + paginatorController.rowsPerPage:paginatorController.rowCount} of ${paginatorController.rowCount}",
                  style:GoogleFonts.nunitoSans(
                    color: colorDropdownGrey.withOpacity(0.8),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: (){
                        paginatorController.goToNextPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Next Page",
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(((state.currentTablePageIndex) + paginatorController.rowsPerPage) < paginatorController.rowCount?0.8:0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: Adaptive.sp(8),),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: colorDropdownGrey.withOpacity(((state.currentTablePageIndex) + paginatorController.rowsPerPage) < paginatorController.rowCount?0.8:0.5),
                              size: Adaptive.sp(12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: Adaptive.sp(8),),
                    InkWell(
                      onTap: (){
                        paginatorController.goToLastPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Last Page",
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(((state.currentTablePageIndex) + paginatorController.rowsPerPage) < paginatorController.rowCount?0.8:0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: Adaptive.sp(8),),
                            Icon(
                              Icons.skip_next,
                              color: colorDropdownGrey.withOpacity(((state.currentTablePageIndex) + paginatorController.rowsPerPage) < paginatorController.rowCount?0.8:0.5),
                              size: Adaptive.sp(12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
        ],
      ),
    );
  }
  Future<void> _displayStatusDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: BlocProvider.value(
              value: providersBloc,
              child: Material(
                color: Colors.transparent,
                child: BlocBuilder<ProvidersBloc, ProvidersState>(
                  builder: (context,state) {
                    return Container(
                      width: Adaptive.sp(66),
                      padding: EdgeInsets.symmetric(vertical: Adaptive.sp(12),horizontal: Adaptive.sp(16)),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Provider Status",
                            style: GoogleFonts.nunitoSans(fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: Adaptive.sp(12)),
                          Wrap(
                            runSpacing: 8,
                            spacing: 8,
                            children: state.providerStatus.map((e){
                              int index = state.providerStatus.indexOf(e);
                              return InkWell(
                                onTap: (){
                                  context.read<ProvidersBloc>().add(ProvidersEvent.setProviderStatus(index: index, value: e.isSelected?false:true));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: Adaptive.sp(8),horizontal: Adaptive.sp(16)),

                                  decoration: BoxDecoration(
                                      color: e.isSelected?primaryColor:softPinkColor,
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color:  e.isSelected?primaryColor:lightGrayColor)
                                  ),
                                  child: Text(
                                    e.name,
                                    style: GoogleFonts.nunitoSans(
                                      color: e.isSelected?Colors.white:colorDropdownGrey.withOpacity(0.7),
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: Adaptive.sp(12)),
                          Divider(color: lightGrayColor.withOpacity(0.5),height: 0.6,),
                          SizedBox(height: Adaptive.sp(8)),
                          Text("*You can choose multiple Order Status",

                            style: GoogleFonts.nunitoSans(
                              color: colorDropdownGrey.withOpacity(0.5),
                              fontSize: 10.5.sp,
                              fontWeight: FontWeight.w500,
                            ),),
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
                                  "Apply Now",
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
                    );
                  }
                ),
              ),
            ),
          );
        });
  }
  Future<void> _displayDateDialog(ProvidersState state,BoxConstraints constrains) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(

            child: SizedBox(
              width: constrains.maxWidth > 600 ?Adaptive.sp(60):Adaptive.sp(70),
              child: BlocProvider.value(
                value: providersBloc,
                child: Material(
                  color: Colors.transparent,
                  child: BlocBuilder<ProvidersBloc, ProvidersState>(
                      builder: (context,state) {
                        return Stack(
                          children: [

                            Container(
                              clipBehavior: Clip.hardEdge,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: Adaptive.sp(10),horizontal: Adaptive.sp(10)),
                                    child: TableCalendar(
                                      focusedDay: state.customStartDate ?? DateTime.now(),
                                      firstDay: DateTime(1900),
                                      daysOfWeekHeight: Adaptive.sp(16),
                                      lastDay: DateTime(2100),
                                      selectedDayPredicate: (day) {
                                        return isSameDay(state.customStartDate??DateTime.now(), day);
                                      },
                                      calendarStyle: CalendarStyle(
                                        weekendTextStyle:  GoogleFonts.nunitoSans(
                                          fontSize: 11.7.sp,
                                          fontWeight: FontWeight.w600,
                                          color: appBlackColor.withOpacity(0.5),
                                        ),
                                        todayTextStyle:  GoogleFonts.nunitoSans(
                                          fontSize: 11.7.sp,
                                          fontWeight: FontWeight.w600,
                                          color: appBlackColor.withOpacity(0.5),
                                        ),
                                        disabledTextStyle:  GoogleFonts.nunitoSans(
                                          fontSize: 11.7.sp,
                                          fontWeight: FontWeight.w600,
                                          color: appBlackColor.withOpacity(0.2),
                                        ),
                                        outsideTextStyle:  GoogleFonts.nunitoSans(
                                          fontSize: 11.7.sp,
                                          fontWeight: FontWeight.w600,
                                          color: appBlackColor.withOpacity(0.2),
                                        ),
                                        todayDecoration: const BoxDecoration(color: Colors.transparent),
                                        defaultDecoration:  BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        selectedDecoration:  BoxDecoration(
                                          color: primaryColor,
                                            shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(12)
                                        ),
                                        selectedTextStyle:  GoogleFonts.nunitoSans(
                                          fontSize: 11.7.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                        defaultTextStyle: GoogleFonts.nunitoSans(
                                          fontSize: 11.7.sp,
                                          fontWeight: FontWeight.w600,
                                          color: appBlackColor.withOpacity(0.5),
                                        ),
                                      ),
                                      headerStyle: HeaderStyle(
                                        formatButtonVisible: false,
                                        titleTextStyle:GoogleFonts.nunitoSans(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                            color:appBlackColor
                                        ),
                                        titleCentered: true,
                                        leftChevronMargin: EdgeInsets.zero,
                                        leftChevronVisible: true,

                                        headerPadding: EdgeInsets.zero,
                                        formatButtonPadding: EdgeInsets.zero,
                                        rightChevronPadding: EdgeInsets.zero,
                                        leftChevronPadding: EdgeInsets.zero,
                                        headerMargin: EdgeInsets.only(
                                            left: Adaptive.sp(12),
                                            right: Adaptive.sp(12),
                                            top: Adaptive.sp(12),
                                            bottom: Adaptive.sp(16)),
                                        rightChevronIcon:Container(
                                          height: Adaptive.sp(15),
                                          width: Adaptive.sp(15),
                                          decoration: BoxDecoration(
                                            color: arrowColor,
                                            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                                            border: Border.all(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                          child:  Center(
                                            child: Icon(
                                              Icons.keyboard_arrow_right,
                                              size: Adaptive.sp(13),
                                              color: primaryColor,
                                            ),
                                          ),
                                        ),
                                        leftChevronIcon:Container(
                                          height: Adaptive.sp(15),
                                          width: Adaptive.sp(15),
                                          decoration: BoxDecoration(
                                            color: arrowColor,
                                            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                                            border: Border.all(
                                              color: Colors.grey.shade300,
                                            ),
                                          ),
                                          child:  Center(
                                            child: Icon(
                                              Icons.keyboard_arrow_left,
                                              size: Adaptive.sp(13),
                                              color: primaryColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onDaySelected: (date, events) {
                                        providersBloc.add(ProvidersEvent.changeFilterDate(startDate: date, endDate: date));
                                      },
                                      daysOfWeekStyle: DaysOfWeekStyle(
                                          weekdayStyle: GoogleFonts.nunitoSans(
                                            fontSize: 11.9.sp,
                                            fontWeight: FontWeight.w600,
                                            color: appBlackColor.withOpacity(0.7),
                                          ),
                                          weekendStyle:GoogleFonts.nunitoSans(
                                            fontSize: 11.9.sp,
                                            fontWeight: FontWeight.w600,
                                            color: appBlackColor.withOpacity(0.7),
                                          )),
                                    ),
                                  ),
                                  SizedBox(height: Adaptive.sp(12)),
                                  Divider(color: lightGrayColor.withOpacity(0.5),height: 0.6,),
                                  SizedBox(height: Adaptive.sp(8)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: Adaptive.sp(10)),
                                    child: Text("*You can choose multiple Order Status",

                                      style: GoogleFonts.nunitoSans(
                                        color: colorDropdownGrey.withOpacity(0.5),
                                        fontSize: 10.5.sp,
                                        fontWeight: FontWeight.w500,
                                      ),),
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
                                          "Apply Now",
                                          style: GoogleFonts.nunitoSans(
                                            color: Colors.white,
                                            fontSize: 11.5.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Adaptive.sp(12)),

                                ],
                              ),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.only(top: Adaptive.sp(24)),
                                child:  Divider(
                                    height: 1, color: lightGrayColor.withOpacity(0.5)),
                              ),
                            ),
                          ],
                        );
                      }
                  ),
                ),
              ),
            ),
          );
        });
  }
}
class ProviderDataSource extends DataTableSource {
  final List<ProviderRequest> providerRequests;

  ProviderDataSource(this.providerRequests);

  @override
  DataRow getRow(int index) {
    final request = providerRequests[index];
    return DataRow(cells: [
      DataCell(Center(child: Text(request.providerId,style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w500,color: appBlackColor.withOpacity(0.9),fontSize: 11.sp)))),
      DataCell(Center(child: Text(request.providerName,style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w500,color: appBlackColor.withOpacity(0.9),fontSize: 11.sp)))),
      DataCell(Center(child: Text(request.location,style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w500,color: appBlackColor.withOpacity(0.9),fontSize: 11.sp)))),
      DataCell(Center(child: Text(request.category,style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w500,color: appBlackColor.withOpacity(0.9),fontSize: 11.sp)))),
      DataCell(Center(child: Container(
        padding: EdgeInsets.symmetric(vertical: 3,horizontal: 6),

          decoration: BoxDecoration(
            color: request.status.toLowerCase() == "active"?greenBlueColor.withOpacity(0.2):
    request.status.toLowerCase() == "pending"?purpleColor.withOpacity(0.2):redColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4)
          ),
          child: Text(request.status,style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w500,fontSize: 10.sp,
            color: request.status.toLowerCase() == "active"?greenBlueColor.withOpacity(1):
            request.status.toLowerCase() == "pending"?purpleColor.withOpacity(1):redColor,))))),
      DataCell(Center(
        child: Container(
          decoration: BoxDecoration(
              color: softPinkColor,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: lightGrayColor)
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 2,vertical: -4),
                  icon: SvgPicture.asset(Assets.images.editIcon), onPressed: () {
                // Add edit action here
              }),
              Container(
                color: lightGrayColor,
                width: 0.6,
                height: 30,
              ),
              IconButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 2,vertical: -4),
                  icon: SvgPicture.asset(Assets.images.binIcon), onPressed: () {
                // Add delete action here
              }),
            ],
          ),
        ),
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => providerRequests.length;

  @override
  int get selectedRowCount => 0; // Update as necessary for selection
}