import 'package:flutter/material.dart';
import 'package:potape/data/price/price_day.dart';

List<Container> historyListMaker(currentItem) {
  List<Container> tmp = [];
  for (int i = 0;
      i < currentItem[currentItem.keys.first.toString()]["history"].length;
      i++)
    if (i < 5)
      tmp.add(Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Container(
                margin: EdgeInsets.only(left: 4),
                child: Text(
                  currentItem[currentItem.keys.first.toString()]["history"][i]
                          ["status"]
                      .toString(),
                  style: TextStyle(
                      color: currentItem[currentItem.keys.first.toString()]
                                  ["history"][i]["status"] ==
                              "IN"
                          ? Colors.green
                          : Colors.red),
                ),
              ),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    currentItem[currentItem.keys.first.toString()]["history"][i]
                            ["quantity"]
                        .toString(),
                    style: TextStyle(
                        color: currentItem[currentItem.keys.first.toString()]
                                    ["history"][i]["status"] ==
                                "IN"
                            ? Colors.green
                            : Colors.red),
                  ),
                  Text(
                    "Rp." +
                        currentItem[currentItem.keys.first.toString()]
                                ["history"][i]["harga"]
                            .toString(),
                    style: TextStyle(
                        color: currentItem[currentItem.keys.first.toString()]
                                    ["history"][i]["status"] ==
                                "IN"
                            ? Colors.green
                            : Colors.red),
                  ),
                ],
              ),
              trailing: Container(
                margin: EdgeInsets.only(right: 4),
                child: Text(
                  currentItem[currentItem.keys.first.toString()]["history"][i]
                          ["time"]
                      .toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Divider(
              color: Colors.black54,
              thickness: 0.5,
            )
          ],
        ),
      ));
    else {
      tmp.add(Container(
        child: ListTile(
          title: IconButton(
            icon: Icon(
              Icons.expand_more_rounded,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          titleAlignment: ListTileTitleAlignment.center,
        ),
      ));
      break;
    }
  return tmp;
}

Container detailsietm_body(
    context, currentItem, detailsEdit, detailsEditChange) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      color: Colors.white,
    ),
    height: MediaQuery.of(context).size.height,
    child: ListView(
      children: [
        Container(
          height: 16,
        ),
        ListTile(
          leading: Container(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentItem.keys.first.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    currentItem[currentItem.keys.first.toString()]["gudang"]
                        .toString(),
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              )),
          trailing: Container(
            padding: EdgeInsets.only(right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Quantity : ${currentItem[currentItem.keys.first.toString()]["quantity"].toString()}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  currentItem[currentItem.keys.first.toString()]["history"][0]
                              ["status"] ==
                          "IN"
                      ? "Item Added "
                      : "Item Removed " +
                          currentItem[currentItem.keys.first.toString()]
                                  ["history"][0]["quantity"]
                              .toString(),
                  style: TextStyle(
                      color: currentItem[currentItem.keys.first.toString()]
                                  ["history"][0]["status"] ==
                              "IN"
                          ? Colors.green
                          : Colors.red),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 12,
        ),
        Container(
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpansionTile(
                title: Text(
                  "Deskripsi",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                collapsedIconColor: Colors.black54,
                expandedAlignment: Alignment.centerLeft,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      currentItem[currentItem.keys.first.toString()]
                          ["deskripsi"],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rp." +
                            (int.parse(currentItem[currentItem.keys.first
                                            .toString()]["quantity"]
                                        .toString()) *
                                    int.parse(price_day.first[
                                        currentItem.keys.first.toString()]!))
                                .toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 6,
                        width: 1,
                      ),
                      Text(
                        "Rp." +
                            price_day.first[currentItem.keys.first.toString()]!,
                        style: TextStyle(
                            color: price_day.first[currentItem.keys.first.toString()]
                                        .toString() !=
                                    "null"
                                ? int.parse(price_day.first[currentItem.keys.first.toString()].toString()) >
                                        int.parse(price_day[1][currentItem.keys.first.toString()]
                                            .toString())
                                    ? Colors.green
                                    : int.parse(price_day.first[currentItem.keys.first
                                                    .toString()]
                                                .toString()) <
                                            int.parse(price_day[1]
                                                    [currentItem.keys.first.toString()]
                                                .toString())
                                        ? Colors.red
                                        : Colors.black54
                                : Colors.black54,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: Text(
                        "Manage",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF92B4EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        ListTile(
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "History",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: PopupMenuButton(
                  icon: Icon(Icons.sort),
                  color: Colors.black54,
                  tooltip: "Sort By",
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        onTap: () {},
                        child: Text("Ascending"),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: Text("Descending"),
                      ),
                    ];
                  },
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black54,
          thickness: 0.5,
          indent: 16,
          endIndent: 16,
        ),
        for (Container c in historyListMaker(currentItem)) c
      ],
    ),
  );
}
