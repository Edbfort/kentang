import 'package:flutter/material.dart';

import '../../data/price/price_day.dart';

Container home_body(context, controller, sortedItem, onPageChange, nextPage,
    currentSingleItem, changeCurrentSingleItem) {
  Iterable data = sortedItem[sortedItem.keys.first]!["items"].values;
  Iterable names = sortedItem[sortedItem.keys.first]!["items"].keys;
  // Iterable subtitle = sortedItem[sortedItem.keys.first]!["items"]["gudang"].keys;
  return Container(
    color: Color(0xFF182631),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        height: MediaQuery.of(context).size.height / 3,
        color: Colors.white,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height / 2,
        child: ListView.separated(
            padding: EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    changeCurrentSingleItem(names, data, index);
                    onPageChange(nextPage);
                  },
                  child: ListTile(
                      leading: Container(
                        margin: EdgeInsets.only(left: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              names.elementAt(index).toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              data.elementAt(index)["gudang"].toString(),
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              price_day.first[names.elementAt(index).toString()]
                                          .toString() !=
                                      "null"
                                  ? int.parse(price_day.first[names.elementAt(index).toString()].toString()) >
                                          int.parse(price_day[1][names
                                                  .elementAt(index)
                                                  .toString()]
                                              .toString())
                                      ? Icon(
                                          Icons.arrow_upward,
                                          color: Colors.green,
                                          size: 16,
                                        )
                                      : int.parse(price_day.first[names
                                                      .elementAt(index)
                                                      .toString()]
                                                  .toString()) <
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
                                style: TextStyle(
                                    color: price_day.first[names.elementAt(index).toString()]
                                                .toString() !=
                                            "null"
                                        ? int.parse(price_day.first[names.elementAt(index).toString()].toString()) >
                                                int.parse(
                                                    price_day[1][names.elementAt(index).toString()]
                                                        .toString())
                                            ? Colors.green
                                            : int.parse(price_day.first[names
                                                            .elementAt(index)
                                                            .toString()]
                                                        .toString()) <
                                                    int.parse(price_day[1]
                                                            [names.elementAt(index).toString()]
                                                        .toString())
                                                ? Colors.red
                                                : Colors.black
                                        : Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Container(
                        margin: EdgeInsets.only(right: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(color: Colors.black54),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  data.elementAt(index)["quantity"].toString(),
                                  style: TextStyle(
                                      color: data
                                                  .elementAt(index)["history"]
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
                                              ? Colors.green
                                              : int.parse(data
                                                          .elementAt(
                                                              index)["quantity"]
                                                          .toString()) <
                                                      int.parse(data
                                                          .elementAt(
                                                              index)["history"]
                                                          .last["quantity"]
                                                          .toString())
                                                  ? Colors.red
                                                  : Colors.black54
                                          : Colors.black54),
                                ),
                                data.elementAt(index)["history"].length > 0
                                    ? int.parse(data
                                                .elementAt(index)["quantity"]
                                                .toString()) >
                                            int.parse(data
                                                .elementAt(index)["history"]
                                                .last["quantity"]
                                                .toString())
                                        ? Icon(
                                            Icons.arrow_upward,
                                            color: Colors.green,
                                            size: 16,
                                          )
                                        : int.parse(data
                                                    .elementAt(
                                                        index)["quantity"]
                                                    .toString()) <
                                                int.parse(data
                                                    .elementAt(index)["history"]
                                                    .last["quantity"]
                                                    .toString())
                                            ? Icon(
                                                Icons.arrow_downward,
                                                color: Colors.red,
                                                size: 16,
                                              )
                                            : Container()
                                    : Container(),
                              ],
                            ),
                          ],
                        ),
                      )));
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black54,
              );
            },
            itemCount: data.length),
        // ListTile()
      ),
    ]),
  );
}
