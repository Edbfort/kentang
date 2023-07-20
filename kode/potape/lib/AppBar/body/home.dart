import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../data/price/price_day.dart';

Container home_body(
  context,
  controller,
  sortedItem,
  onPageChange,
  nextPage,
  currentSingleItem,
  changeCurrentSingleItem,
  DateTimeRange selDateRange,
  selDateRangeChange,
  homeChartData,
  bottomTitles,
  homeGrafItemChange,
  homeGrafBy,
  homeGrafByChange,
) {
  selRangePicker(context) async {
    final DateTimeRange? rangePicker = await showDateRangePicker(
      context: context,
      initialDateRange: selDateRange,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime.now(),
    );
    if (rangePicker != null && rangePicker != selDateRange) {
      selDateRangeChange(rangePicker);
    }
  }

  Iterable data = sortedItem[sortedItem.keys.first]!["items"].values;
  Iterable names = sortedItem[sortedItem.keys.first]!["items"].keys;
  // Iterable subtitle = sortedItem[sortedItem.keys.first]!["items"]["gudang"].keys;
  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 80,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 16, bottom: 8, left: 16),
                            child: TextButton(
                              onPressed: () {
                                selRangePicker(context);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    DateFormat('MMM. d, y')
                                            .format(selDateRange.start) +
                                        " - " +
                                        DateFormat('MMM. d, y')
                                            .format(selDateRange.end),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 200,
                          margin: EdgeInsets.only(right: 42, left: 10),
                          child: BarChart(
                            BarChartData(
                              barGroups: homeChartData,
                              // read about it in the BarChartData section
                              titlesData: FlTitlesData(
                                show: true,
                                rightTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                  ),
                                ),
                                topTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: bottomTitles,
                                    reservedSize: 42,
                                  ),
                                ),
                              ),
                              // gridData: FlGridData(show: false)
                            ),
                            swapAnimationDuration:
                                Duration(milliseconds: 150), // Optional
                            swapAnimationCurve: Curves.linear, // Optional
                          )),
                      Theme(
                          data: ThemeData(brightness: Brightness.light),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              width: MediaQuery.of(context).size.width / 10 * 8,
                              margin: EdgeInsets.only(top: 8, bottom: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  homeGrafBy == "day"
                                      ? ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Day"),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Color(0xFF92B4EC),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        )
                                      : OutlinedButton(
                                          onPressed: () {
                                            homeGrafByChange("day");
                                          },
                                          child: Text(
                                            "Day",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.white10,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                  homeGrafBy == "week"
                                      ? ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Week"),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Color(0xFF92B4EC),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        )
                                      : OutlinedButton(
                                          onPressed: () {
                                            homeGrafByChange("week");
                                          },
                                          child: Text(
                                            "Week",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.white10,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                  homeGrafBy == "mon"
                                      ? ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Month"),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Color(0xFF92B4EC),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        )
                                      : OutlinedButton(
                                          onPressed: () {
                                            homeGrafByChange("mon");
                                          },
                                          child: Text(
                                            "Month",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.white10,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                  homeGrafBy == "year"
                                      ? ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Year"),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Color(0xFF92B4EC),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        )
                                      : OutlinedButton(
                                          onPressed: () {
                                            homeGrafByChange("year");
                                          },
                                          child: Text(
                                            "Year",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: Colors.white10,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height - 324 - 100,
                  child: ListView.separated(
                      padding: EdgeInsets.only(top: 8),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onLongPress: () {
                              homeGrafItemChange(
                                  names.elementAt(index).toString());
                            },
                            onTap: () {
                              homeGrafItemChange(
                                  names.elementAt(index).toString());
                              changeCurrentSingleItem(names, data, index);
                              onPageChange(nextPage);
                            },
                            child: ListTile(
                                title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(left: 4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        names.elementAt(index).toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data
                                            .elementAt(index)["gudang"]
                                            .toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 14,
                                  child: VerticalDivider(
                                    color: Colors.black26,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          price_day.first[names.elementAt(index).toString()].toString() !=
                                                  "null"
                                              ? int.parse(price_day.first[names
                                                              .elementAt(index)
                                                              .toString()]
                                                          .toString()) >
                                                      int.parse(price_day[1][names
                                                              .elementAt(index)
                                                              .toString()]
                                                          .toString())
                                                  ? Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.green,
                                                      size: 16,
                                                    )
                                                  : int.parse(price_day.first[names.elementAt(index).toString()].toString()) <
                                                          int.parse(price_day[1]
                                                                  [names.elementAt(index).toString()]
                                                              .toString())
                                                      ? Icon(
                                                          Icons.arrow_downward,
                                                          color: Colors.red,
                                                          size: 16,
                                                        )
                                                      : Container()
                                              : Container(),
                                          Text(
                                            price_day.first[names
                                                            .elementAt(index)
                                                            .toString()]
                                                        .toString() !=
                                                    "null"
                                                ? "Rp. " +
                                                    price_day.first[names
                                                            .elementAt(index)
                                                            .toString()]
                                                        .toString()
                                                : "NO DATA",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: price_day.first[names.elementAt(index).toString()]
                                                            .toString() !=
                                                        "null"
                                                    ? int.parse(price_day
                                                                .first[names
                                                                    .elementAt(
                                                                        index)
                                                                    .toString()]
                                                                .toString()) >
                                                            int.parse(price_day[1][names
                                                                    .elementAt(index)
                                                                    .toString()]
                                                                .toString())
                                                        ? Colors.green
                                                        : int.parse(price_day.first[names.elementAt(index).toString()].toString()) < int.parse(price_day[1][names.elementAt(index).toString()].toString())
                                                            ? Colors.red
                                                            : Colors.black
                                                    : Colors.black),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 14,
                                  child: VerticalDivider(
                                    color: Colors.black26,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Quantity",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          data
                                                      .elementAt(
                                                          index)["history"]
                                                      .length >
                                                  0
                                              ? int.parse(data
                                                          .elementAt(
                                                              index)["quantity"]
                                                          .toString()) >
                                                      int.parse(data
                                                          .elementAt(
                                                              index)["history"]
                                                          .last["quantity"]
                                                          .toString())
                                                  ? Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.green,
                                                      size: 16,
                                                    )
                                                  : int.parse(data
                                                              .elementAt(index)[
                                                                  "quantity"]
                                                              .toString()) <
                                                          int.parse(data
                                                              .elementAt(index)[
                                                                  "history"]
                                                              .last["quantity"]
                                                              .toString())
                                                      ? Icon(
                                                          Icons.arrow_downward,
                                                          color: Colors.red,
                                                          size: 16,
                                                        )
                                                      : Container()
                                              : Container(),
                                          Text(
                                            data
                                                .elementAt(index)["quantity"]
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: data.elementAt(index)["history"].length >
                                                        0
                                                    ? int.parse(data
                                                                .elementAt(index)[
                                                                    "quantity"]
                                                                .toString()) >
                                                            int.parse(data
                                                                .elementAt(index)[
                                                                    "history"]
                                                                .last[
                                                                    "quantity"]
                                                                .toString())
                                                        ? Colors.green
                                                        : int.parse(data
                                                                    .elementAt(index)[
                                                                        "quantity"]
                                                                    .toString()) <
                                                                int.parse(data
                                                                    .elementAt(index)["history"]
                                                                    .last["quantity"]
                                                                    .toString())
                                                            ? Colors.red
                                                            : Colors.black54
                                                    : Colors.black54),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )));
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.black26,
                        );
                      },
                      itemCount: data.length),
                ),
              ]),
        ),
      ));
}
