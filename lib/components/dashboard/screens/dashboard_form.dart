import 'package:data_table_2/data_table_2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_services/components/dashboard/bloc/dashboard_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../common_model/categories_model.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/color_constant.dart';
import '../../side_bar/screens/side_bar.dart';
import '../model/provider_request.dart';
import '../model/revenue_data.dart';

class DashboardForm extends StatefulWidget {
  const DashboardForm({super.key});

  @override
  State<DashboardForm> createState() => _DashboardFormState();
}

class _DashboardFormState extends State<DashboardForm> {

  List<double> getCustomItemsHeights(List<CategoriesModel> items) {
    final List<double> itemsHeights = [];
    for (int i = 0; i < items.length ; i++) {
        itemsHeights.add(Adaptive.sp(18));
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
    required DashBoardState state,
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
                child: Text(
                  item.name,
                  style: GoogleFonts.nunitoSans(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize,
                  ),
                )
            ),
          ),
        ],
      );
    }
    return menuItems;
  }
  PaginatorController paginatorController = PaginatorController();


  @override
  void initState() {
    super.initState();
    paginatorController.addListener((){
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashBoardBloc, DashBoardState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: Adaptive.sp(14)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: _buildStatCard(
                              "Total Users", NumberFormat("##,###").format(state.totalUsers).toString(), Assets.images.dashboardTotalUsers.path,true),
                        ),
                        SizedBox(width: Adaptive.sp(12),),
                        Expanded(
                          child: _buildStatCard("Total Providers",
                              NumberFormat("##,###").format(state.totalProviders).toString(),Assets.images.dashboardTotalProviders.path,true),
                        ),
                        SizedBox(width: Adaptive.sp(12),),
                        Expanded(
                          child: _buildStatCard("Req Pending",
                              NumberFormat("##,###").format(state.requestsPending).toString(),  Assets.images.dashboardPendingRequests.path,false),
                        ),
                        if(constraint.maxWidth>690)...[
                        SizedBox(width: Adaptive.sp(12),),
                        Expanded(child: Container())]
                      ],
                    ),
                    SizedBox(height: Adaptive.sp(14)),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _headingWithDropDown("Revenue",state),
                          SizedBox(height: Adaptive.sp(14)),
                      SfCartesianChart(
                        legend: Legend(isVisible: true,
                        position: LegendPosition.bottom,
                          isResponsive: true
                        ),
                        borderWidth: 0,
                        plotAreaBorderWidth: 0,

                        tooltipBehavior: TooltipBehavior(enable: false),
                        series: <CartesianSeries>[
                          // Spline area chart for last month
                          SplineAreaSeries<RevenueData, num>(
                            name: 'Last Month',
                            dataSource: state.revenueData,
                            xValueMapper: (RevenueData data, _) => data.value, // Use numeric value
                            yValueMapper: (RevenueData data, _) => data.lastMonth,
                            color: lightPurpleColor,
                            opacity: 0.78,
                            borderWidth: 2,
                          ),
                          // Spline area chart for this month
                          SplineAreaSeries<RevenueData, num>(
                            name: 'This Month',
                            dataSource: state.revenueData,
                            xValueMapper: (RevenueData data, _) => data.value, // Use numeric value
                            yValueMapper: (RevenueData data, _) => data.thisMonth,
                            color: lightOrangeColor,
                            opacity: 0.78,
                            borderWidth: 2,
                          ),
                        ],
                        primaryXAxis: NumericAxis(
                          labelFormat: '{value}k',
                          borderWidth: 0,
                          labelStyle: GoogleFonts.nunitoSans(
                            color: colorDropdownGrey.withOpacity(0.4),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500
                          ),
                          majorGridLines: const MajorGridLines(width: 0),
                          majorTickLines: const MajorTickLines(width: 0),
                          axisLine: const AxisLine(width: 0),
                        ),
                        primaryYAxis: NumericAxis(
                          labelFormat: '{value}',
                          interval: 20,
                          labelStyle: GoogleFonts.nunitoSans(
                              color: colorDropdownGrey.withOpacity(0.4),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500
                          ),
                          borderWidth: 0,

                          majorTickLines: const MajorTickLines(width: 0),
                          axisLine: const AxisLine(width: 0),
                        ),
                      )

                      ],
                      ),
                    ),
                    SizedBox(height: Adaptive.sp(14)),
                    _buildProviderTable(state.providerRequests,state),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _headingWithDropDown(String title, DashBoardState state){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: Adaptive.sp(31),
          child: Center(
            child: DropdownButtonFormField2<CategoriesModel>(
              customButton: Container(
                padding: EdgeInsets.symmetric(vertical: Adaptive.sp(6),horizontal: Adaptive.sp(8)),
                decoration: BoxDecoration(
                    color: softPinkColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: lightGrayColor)
                ),
                child: Row(
                  children: [
                    Text(
                      state.months.firstWhere((e) => e.isSelected).name,
                      style: GoogleFonts.nunitoSans(
                        color: colorDropdownGrey.withOpacity(0.7),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: colorDropdownGrey.withOpacity(0.7),
                      size: Adaptive.sp(12),
                    ),
                  ],
                ),
              ),
              value: state.months
                  .where((e) => e.isSelected)
                  .isNotEmpty
                  ? state.months
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
              menuItemStyleData: menuItemStyleData(state.months),
              items: addDividersAfterItems(items: state.months,state:state, fontSize: 11.5.sp),
              onChanged: (text){
                if(text != null){
                  context.read<DashBoardBloc>().add(DashBoardEvent.setCurrentMonth(index: state.months.indexOf(text)));
                }
              },
              decoration: InputDecoration(
                  border: InputBorder.none
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Stat card widget
  Widget _buildStatCard(String title, String value, String image, bool showBottom) {
    return Container(
      height: Adaptive.sp(38),
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: appBlackColor.withOpacity(0.7)
                      ),
                    ),
                    SizedBox(height: Adaptive.sp(10)),
                    Text(
                      value,
                      style:GoogleFonts.nunitoSans(
                          fontSize: 15.5.sp,
                          fontWeight: FontWeight.bold,
                          color: appBlackColor
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(image,
              width: Adaptive.sp(20),)
            ],
          ),
          Spacer(),
          if(showBottom)
            Row(
            children: [
              SvgPicture.asset(Assets.images.chartUp),
              SizedBox(width: Adaptive.sp(8),),

              Text(
                "8.5% ",
                style: GoogleFonts.nunitoSans(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: greenBlueColor
                ),
              ),
              Text(
                "Up from October",
                style: GoogleFonts.nunitoSans(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: appBlackColor.withOpacity(0.7)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


  Widget _buildProviderTable(List<ProviderRequest> requests,DashBoardState state) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          _headingWithDropDown("Action Provider Requests",state),
          SizedBox(height: Adaptive.sp(8),),
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
          Theme(
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
            child: SizedBox(
              //width: 300,
              height: 300,
              child: PaginatedDataTable2(
                horizontalMargin: 20,
                minWidth: 800,


                onPageChanged: (index){
                  print(index);
                  context.read<DashBoardBloc>().add(DashBoardEvent.changeCurrentTablePageIndex(index: index));
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
                  icon: SvgPicture.asset(Assets.images.editIcon,width: Adaptive.sp(13),), onPressed: () {
                // Add edit action here
              }),
              Container(
                color: lightGrayColor,
                width: 0.6,
                height: Adaptive.sp(18),
              ),
              IconButton(
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity(horizontal: 2,vertical: -4),
                  icon: SvgPicture.asset(Assets.images.binIcon, width: Adaptive.sp(13)), onPressed: () {
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