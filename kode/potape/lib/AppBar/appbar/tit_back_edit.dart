import 'package:flutter/material.dart';

AppBar tit_back_edit_apbr(
    title_,
    itemName,
    detailsEdit,
    detailsEditChange,
    detailsEditSetBaseText,
    detailsEditItemNameErrText,
    detailsEditGudangErrText,
    detailsEditErrTextChange,
    detailsEditItemName,
    detailsEditGudang,
    detailsEditDeskripsi,
    sortedItem,
    editItem) {
  return AppBar(
    leading: BackButton(),
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      detailsEdit == false ? "Details" : "Edit",
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    actions: [
      Container(
        margin: EdgeInsets.only(right: 8),
        child: detailsEdit == false
            ? PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        detailsEditChange(!detailsEdit);
                        detailsEditSetBaseText();
                      },
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Remove",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        Future.delayed(
                            const Duration(seconds: 0),
                            () => showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                      data: ThemeData(
                                          brightness: Brightness.light),
                                      child: AlertDialog(
                                          title: Text('Remove Item?'),
                                          content: Text(
                                              "Do you really want to remove item?"),
                                          actions: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                TextButton(
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(false),
                                                    child:
                                                        const Text('Cancel')),
                                                Container(
                                                  height: 14,
                                                  child: VerticalDivider(
                                                    color: Colors.black26,
                                                    thickness: 1,
                                                  ),
                                                ),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop("Remove");
                                                      Navigator.maybePop(
                                                          context);
                                                    },
                                                    child:
                                                        const Text('Remove')),
                                              ],
                                            ),
                                          ]));
                                }));
                      },
                    ),
                  ];
                },
                color: Colors.white,
              )
            : TextButton(
                onPressed: () {
                  detailsEditItemNameErrText = "";
                  detailsEditGudangErrText = "";

                  if (detailsEditItemName.text == "") {
                    detailsEditItemNameErrText = "Item name cannot be empty";
                  } else if (sortedItem.values
                      .elementAt(0)["items"]
                      .containsKey(detailsEditItemName.text)) {
                    detailsEditItemNameErrText = "Item name is already used";
                  }

                  if (detailsEditGudang.text == "") {
                    detailsEditGudangErrText = "Location cannot be empty";
                  }

                  detailsEditErrTextChange(
                      [detailsEditItemNameErrText, detailsEditGudangErrText]);

                  if (detailsEditItemNameErrText == "" &&
                      detailsEditGudangErrText == "") {
                    editItem(itemName, detailsEditItemName, detailsEditGudang,
                        detailsEditDeskripsi);
                    detailsEditChange(!detailsEdit);
                  }
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
      )
    ],
  );
}
