import 'package:data_table_2/data_table_2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
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
    for (int i = 0; i < items.length; i++) {
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

  List<DropdownMenuItem<CategoriesModel>> addDividersAfterItems(
      {required List<CategoriesModel> items,
      required DashBoardState state,
      required double fontSize}) {
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
                )),
          ),
        ],
      );
    }
    return menuItems;
  }

  PaginatorController paginatorController = PaginatorController();
  late DashBoardBloc dashBoardBloc;

  @override
  void initState() {
    super.initState();
    paginatorController.addListener(() {
      setState(() {});
    });
    dashBoardBloc = context.read<DashBoardBloc>();
    dashBoardBloc.add(const DashBoardEvent.fetchProviderRequests());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashBoardBloc, DashBoardState>(
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "dashboard".tr(),
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: Adaptive.sp(14)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: _buildStatCard(
                              "totalUsers".tr(),
                              NumberFormat("##,###")
                                  .format(state.totalUsers)
                                  .toString(),
                              Assets.images.dashboardTotalUsers.path,
                              true),
                        ),
                        SizedBox(
                          width: Adaptive.sp(12),
                        ),
                        Expanded(
                          child: _buildStatCard(
                              "totalProviders".tr(),
                              NumberFormat("##,###")
                                  .format(state.totalProviders)
                                  .toString(),
                              Assets.images.dashboardTotalProviders.path,
                              true),
                        ),
                        SizedBox(
                          width: Adaptive.sp(12),
                        ),
                        Expanded(
                          child: _buildStatCard(
                              "reqPending".tr(),
                              NumberFormat("##,###")
                                  .format(state.requestsPending)
                                  .toString(),
                              Assets.images.dashboardPendingRequests.path,
                              false),
                        ),
                        if (constraint.maxWidth > 690) ...[
                          SizedBox(
                            width: Adaptive.sp(12),
                          ),
                          Expanded(child: Container())
                        ]
                      ],
                    ),
                    SizedBox(height: Adaptive.sp(14)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _headingWithDropDown("revenue".tr(), state),
                          SizedBox(height: Adaptive.sp(14)),
                          SfCartesianChart(
                            legend: const Legend(
                                isVisible: true,
                                position: LegendPosition.bottom,
                                isResponsive: true),
                            borderWidth: 0,
                            plotAreaBorderWidth: 0,
                            tooltipBehavior: TooltipBehavior(enable: false),
                            series: <CartesianSeries>[
                              // Spline area chart for last month
                              SplineAreaSeries<RevenueData, num>(
                                name: "lastMonth".tr(),
                                dataSource: state.revenueData,
                                xValueMapper: (RevenueData data, _) =>
                                    data.value, // Use numeric value
                                yValueMapper: (RevenueData data, _) =>
                                    data.lastMonth,
                                color: lightPurpleColor,
                                opacity: 0.78,
                                borderWidth: 2,
                              ),
                              // Spline area chart for this month
                              SplineAreaSeries<RevenueData, num>(
                                name: "thisMonth".tr(),
                                dataSource: state.revenueData,
                                xValueMapper: (RevenueData data, _) =>
                                    data.value, // Use numeric value
                                yValueMapper: (RevenueData data, _) =>
                                    data.thisMonth,
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
                                  fontWeight: FontWeight.w500),
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
                                  fontWeight: FontWeight.w500),
                              borderWidth: 0,
                              majorTickLines: const MajorTickLines(width: 0),
                              axisLine: const AxisLine(width: 0),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: Adaptive.sp(14)),
                    state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: primaryColor,
                            ),
                          )
                        : _buildProviderTable(state.providerRequests, state),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _headingWithDropDown(String title, DashBoardState state) {
    return Row(
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
                padding: EdgeInsets.symmetric(
                    vertical: Adaptive.sp(6), horizontal: Adaptive.sp(8)),
                decoration: BoxDecoration(
                    color: softPinkColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: lightGrayColor)),
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
                    const Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: colorDropdownGrey.withOpacity(0.7),
                      size: Adaptive.sp(12),
                    ),
                  ],
                ),
              ),
              value: state.months.where((e) => e.isSelected).isNotEmpty
                  ? state.months.firstWhere((e) => e.isSelected)
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
              style:
                  GoogleFonts.openSans(color: Colors.white, fontSize: 15.75.sp),
              menuItemStyleData: menuItemStyleData(state.months),
              items: addDividersAfterItems(
                  items: state.months, state: state, fontSize: 11.5.sp),
              onChanged: (text) {
                if (text != null) {
                  context.read<DashBoardBloc>().add(
                      DashBoardEvent.setCurrentMonth(
                          index: state.months.indexOf(text)));
                }
              },
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }

  // Stat card widget
  Widget _buildStatCard(
      String title, String value, String image, bool showBottom) {
    return Container(
      height: Adaptive.sp(38),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
                          color: appBlackColor.withOpacity(0.7)),
                    ),
                    SizedBox(height: Adaptive.sp(10)),
                    Text(
                      value,
                      style: GoogleFonts.nunitoSans(
                          fontSize: 15.5.sp,
                          fontWeight: FontWeight.bold,
                          color: appBlackColor),
                    ),
                  ],
                ),
              ),
              Image.asset(
                image,
                width: Adaptive.sp(20),
              )
            ],
          ),
          const Spacer(),
          if (showBottom)
            Row(
              children: [
                SvgPicture.asset(Assets.images.chartUp),
                SizedBox(
                  width: Adaptive.sp(8),
                ),
                Text(
                  "8.5% ",
                  style: GoogleFonts.nunitoSans(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: greenBlueColor),
                ),
                Text(
                  "upFromOctober".tr(),
                  style: GoogleFonts.nunitoSans(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: appBlackColor.withOpacity(0.7)),
                ),
              ],
            )
        ],
      ),
    );
  }

  Widget _buildProviderTable(
      List<ProviderRequestModel> requests, DashBoardState state) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          _headingWithDropDown("activeProviderRequests".tr(), state),
          SizedBox(
            height: Adaptive.sp(8),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: Adaptive.sp(12)),
            constraints: const BoxConstraints(minWidth: 800),
            decoration: BoxDecoration(
                color: tableHeaderColor,
                borderRadius: BorderRadius.circular(100)),
            child: Row(
              children: [
                Expanded(
                    child: Center(
                        child: Text("providerId".tr(),
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.5.sp,
                            )))),
                Expanded(
                    child: Center(
                        child: Text("providerName".tr(),
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.5.sp)))),
                Expanded(
                    child: Center(
                        child: Text("location".tr(),
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.5.sp)))),
                Expanded(
                    child: Center(
                        child: Text("status".tr(),
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.5.sp)))),
                Expanded(
                    child: Center(
                        child: Text("actions".tr(),
                            style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 11.5.sp)))),
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              dividerTheme:
                  const DividerThemeData(color: lightGrayColor, thickness: 0.6),
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
                onPageChanged: (index) {
                  print(index);
                  context.read<DashBoardBloc>().add(
                      DashBoardEvent.changeCurrentTablePageIndex(index: index));
                },
                controller: paginatorController,
                fit: FlexFit.tight,
                sortArrowAlwaysVisible: true,
                dividerThickness: 0.6,
                headingRowHeight: 0,
                autoRowsToHeight: true,
                hidePaginator: true,
                columns: const [
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                  DataColumn(label: Text("")),
                ],
                source: ProviderDataSource(
                    requests, context, context.read<DashBoardBloc>()),
                rowsPerPage: 5,
                showFirstLastButtons: false,
              ),
            ),
          ),
          SizedBox(
            height: Adaptive.sp(8),
          ),
          if (paginatorController.isAttached)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        paginatorController.goToFirstPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Adaptive.sp(6),
                            horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)),
                        child: Row(
                          children: [
                            Text(
                              "firstPage".tr(),
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(
                                    state.currentTablePageIndex > 0
                                        ? 0.8
                                        : 0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: Adaptive.sp(8),
                            ),
                            Icon(
                              Icons.skip_previous,
                              color: colorDropdownGrey.withOpacity(
                                  state.currentTablePageIndex > 0 ? 0.8 : 0.5),
                              size: Adaptive.sp(12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Adaptive.sp(8),
                    ),
                    InkWell(
                      onTap: () {
                        paginatorController.goToPreviousPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Adaptive.sp(6),
                            horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_sharp,
                              color: colorDropdownGrey.withOpacity(
                                  state.currentTablePageIndex > 0 ? 0.8 : 0.5),
                              size: Adaptive.sp(12),
                            ),
                            SizedBox(
                              width: Adaptive.sp(8),
                            ),
                            Text(
                              "previousPage".tr(),
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(
                                    state.currentTablePageIndex > 0
                                        ? 0.8
                                        : 0.5),
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
                Text(
                  "${"showing".tr()} ${(state.currentTablePageIndex + 1)}-${((state.currentTablePageIndex) + paginatorController.rowsPerPage) < paginatorController.rowCount ? (state.currentTablePageIndex) + paginatorController.rowsPerPage : paginatorController.rowCount}${"of".tr()}${paginatorController.rowCount}",
                  style: GoogleFonts.nunitoSans(
                    color: colorDropdownGrey.withOpacity(0.8),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        paginatorController.goToNextPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Adaptive.sp(6),
                            horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)),
                        child: Row(
                          children: [
                            Text(
                              "nextPage".tr(),
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(((state
                                                .currentTablePageIndex) +
                                            paginatorController.rowsPerPage) <
                                        paginatorController.rowCount
                                    ? 0.8
                                    : 0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: Adaptive.sp(8),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: colorDropdownGrey.withOpacity(
                                  ((state.currentTablePageIndex) +
                                              paginatorController.rowsPerPage) <
                                          paginatorController.rowCount
                                      ? 0.8
                                      : 0.5),
                              size: Adaptive.sp(12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Adaptive.sp(8),
                    ),
                    InkWell(
                      onTap: () {
                        paginatorController.goToLastPage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: Adaptive.sp(6),
                            horizontal: Adaptive.sp(8)),
                        decoration: BoxDecoration(
                            color: softPinkColor,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: lightGrayColor)),
                        child: Row(
                          children: [
                            Text(
                              "lastPage".tr(),
                              style: GoogleFonts.nunitoSans(
                                color: colorDropdownGrey.withOpacity(((state
                                                .currentTablePageIndex) +
                                            paginatorController.rowsPerPage) <
                                        paginatorController.rowCount
                                    ? 0.8
                                    : 0.5),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: Adaptive.sp(8),
                            ),
                            Icon(
                              Icons.skip_next,
                              color: colorDropdownGrey.withOpacity(
                                  ((state.currentTablePageIndex) +
                                              paginatorController.rowsPerPage) <
                                          paginatorController.rowCount
                                      ? 0.8
                                      : 0.5),
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
  final List<ProviderRequestModel> providerRequests;
  DashBoardBloc dashBoardBloc;
  BuildContext context;
  String? selectedStatus;

  ProviderDataSource(this.providerRequests, this.context, this.dashBoardBloc);

  @override
  DataRow getRow(int index) {
    final request = providerRequests[index];

    final locationsList =
        request.mapLocations.map((location) => location.id).join(', ');
    return DataRow(cells: [
      DataCell(Center(
          child: Text(request.id,
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w500,
                  color: appBlackColor.withOpacity(0.9),
                  fontSize: 11.sp)))),
      DataCell(Center(
          child: Text(request.businessName,
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w500,
                  color: appBlackColor.withOpacity(0.9),
                  fontSize: 11.sp)))),
      DataCell(Center(
          child: Text(locationsList,
              style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w500,
                  color: appBlackColor.withOpacity(0.9),
                  fontSize: 11.sp)))),
      DataCell(Center(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
              decoration: BoxDecoration(
                  color: request.status == "verified"
                      ? greenBlueColor.withOpacity(0.2)
                      : request.status == "pending"
                          ? purpleColor.withOpacity(0.2)
                          : redColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4)),
              child: Text(request.status,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    color: request.status == "verified"
                        ? greenBlueColor.withOpacity(1)
                        : request.status == "pending"
                            ? purpleColor.withOpacity(1)
                            : redColor,
                  ))))),
      DataCell(Center(
        child: Container(
          decoration: BoxDecoration(
              color: softPinkColor,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: lightGrayColor)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: 2, vertical: -4),
                  icon: SvgPicture.asset(
                    Assets.images.editIcon,
                    width: Adaptive.sp(13),
                  ),
                  onPressed: () {
                    _displayStatusDialog(context, request.id);
                  }),
              Container(
                color: lightGrayColor,
                width: 0.6,
                height: Adaptive.sp(18),
              ),
              IconButton(
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: 2, vertical: -4),
                  icon: SvgPicture.asset(Assets.images.binIcon,
                      width: Adaptive.sp(13)),
                  onPressed: () {
                    _displayDeleteDialog(request.id, context);
                  }),
            ],
          ),
        ),
      )),
    ]);
  }

  Future<void> _displayStatusDialog(
      BuildContext context, String providerId) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: BlocProvider.value(
            value: dashBoardBloc,
            child: Material(
              color: Colors.transparent,
              child: BlocBuilder<DashBoardBloc, DashBoardState>(
                  builder: (context, state) {
                return Container(
                  width: Adaptive.sp(66),
                  padding: EdgeInsets.symmetric(
                      vertical: Adaptive.sp(12), horizontal: Adaptive.sp(16)),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "updateStatus".tr(),
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: Adaptive.sp(20)),
                      DropdownButtonFormField<String>(
                        value: null,
                        hint: Text(
                          "updateStatus".tr(),
                          style: GoogleFonts.nunitoSans(
                            color: primaryColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        items: state.providerStatus.map((status) {
                          return DropdownMenuItem<String>(
                            value: status.name,
                            child: Text(
                              status.name,
                              style: TextStyle(
                                fontSize:
                                    14, // Adjust font size for dropdown items
                                fontWeight: FontWeight.w600,
                                color: Colors.black, // Item text color
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          selectedStatus = value;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          isCollapsed: true,
                          isDense: true,
                          constraints: const BoxConstraints(),
                          prefixIconConstraints: const BoxConstraints(),
                          hintStyle: GoogleFonts.nunitoSans(
                              color: borderColor, fontSize: 13.sp),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: Adaptive.sp(14),
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
                        icon: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.blue,
                          size: 20,
                        ),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        dropdownColor: Colors.white,
                        isDense: true,
                        isExpanded: true,
                      ),
                      SizedBox(height: Adaptive.sp(20)),
                      state.isLoadingUpdate
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              ),
                            )
                          : Center(
                              child: InkWell(
                                onTap: () {
                                  if (selectedStatus != null) {
                                    String? updatedStatus = selectedStatus ==
                                            "active".tr()
                                        ? "verified"
                                        : selectedStatus == "pending".tr()
                                            ? "pending"
                                            : selectedStatus == "rejected".tr()
                                                ? "rejected"
                                                : selectedStatus ==
                                                        "onHold".tr()
                                                    ? "pending"
                                                    : selectedStatus;

                                    dashBoardBloc
                                        .add(DashBoardEvent.updateProvider(
                                      body: {"status": updatedStatus},
                                      id: providerId,
                                      context: context,
                                    ));
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
                                    "applyNow".tr(),
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
              }),
            ),
          ),
        );
      },
    );
  }

  Future<void> _displayDeleteDialog(
      String providerId, BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Material(
            color: Colors.transparent,
            child: BlocBuilder<DashBoardBloc, DashBoardState>(
                builder: (context, state) {
              return Container(
                width: Adaptive.sp(66),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Adaptive.sp(10)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Adaptive.sp(12),
                          horizontal: Adaptive.sp(16)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.close,
                            color: Color(0xFF858D9D),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        Assets.images.bin.path,
                        width: Adaptive.w(13),
                        height: Adaptive.h(13),
                      ),
                    ),
                    Center(
                      child: Text(
                        "confirmDelete".tr(),
                        style: GoogleFonts.nunitoSans(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: Adaptive.sp(5)),
                    Center(
                      child: Text(
                        "deleteMessage".tr(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xFFABABAB),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: Adaptive.sp(15)),
                    Divider(),
                    SizedBox(height: Adaptive.sp(15)),
                    state.isLoadingDelete
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: primaryColor,
                            ),
                          )
                        : Center(
                            child: InkWell(
                              onTap: () {
                                dashBoardBloc.add(DashBoardEvent.deleteProvider(
                                  id: providerId,
                                  context: context,
                                ));
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
                                  "apply".tr(),
                                  style: GoogleFonts.nunitoSans(
                                    color: Colors.white,
                                    fontSize: 11.5.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                    SizedBox(height: Adaptive.sp(15)),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => providerRequests.length;

  @override
  int get selectedRowCount => 0; // Update as necessary for selection
}
