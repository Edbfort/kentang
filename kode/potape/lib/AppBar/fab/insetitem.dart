import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../body/login.dart';

Container textFieldTitle2(title_) {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          title_,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

FloatingActionButton insertItem_fab(
    context,
    itemNameAdd,
    locationAdd,
    quantityAdd,
    descripAdd,
    itemNameErrText,
    locationErrText,
    quantityErrText,
    sortedItem,
    addErrTextChange,
    addItemSingle) {
  return FloatingActionButton(
    onPressed: () {
      showDialog(
          context: context,
          builder: (context) {
            return StatefulBuilder(builder: (context, setState) {
              return Dialog.fullscreen(
                  child: Scaffold(
                      appBar: AppBar(
                        iconTheme: IconThemeData(color: Colors.white),
                        leading: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.maybePop(context);
                          },
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        centerTitle: true,
                        title: Text(
                          "Add Item",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    itemNameErrText = "";
                                    locationErrText = "";
                                    quantityErrText = "";

                                    if (itemNameAdd.text == "") {
                                      itemNameErrText =
                                          "Item name cannot be empty";
                                    } else if (sortedItem.values
                                        .elementAt(0)["items"]
                                        .containsKey(itemNameAdd.text)) {
                                      itemNameErrText =
                                          "Item name is already used";
                                    }

                                    if (locationAdd.text == "") {
                                      locationErrText =
                                          "Location cannot be empty";
                                    }

                                    if (quantityAdd.text == "") {
                                      quantityErrText =
                                          "Quantity cannot be empty";
                                    }

                                    addErrTextChange([
                                      itemNameErrText,
                                      locationErrText,
                                      quantityErrText
                                    ]);

                                    if (itemNameErrText == "" &&
                                        locationErrText == "" &&
                                        quantityErrText == "") {
                                      addItemSingle(
                                          itemNameAdd.text,
                                          locationAdd.text,
                                          quantityAdd.text,
                                          descripAdd.text);
                                      Navigator.maybePop(context);
                                    }
                                  },
                                );
                              },
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                          Container(
                            width: 8,
                          )
                        ],
                      ),
                      body: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: SingleChildScrollView(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top: 20, left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          textFieldTitle2("Item Name"),
                                          TextField(
                                            controller: itemNameAdd,
                                            // inputFormatters: [
                                            //   FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z]'))
                                            // ],
                                            style:
                                                TextStyle(color: Colors.black),
                                            decoration: InputDecoration(
                                                hintText: "Item Name",
                                                hintStyle: TextStyle(
                                                    color: Colors.black26),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                // labelStyle: labelTextStyle,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                    color: Colors.black26,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    width: 2,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                errorText: itemNameErrText == ""
                                                    ? null
                                                    : itemNameErrText),
                                          ),
                                          Row(children: [
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    textFieldTitle2("Location"),
                                                    TextField(
                                                      controller: locationAdd,
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                      decoration:
                                                          InputDecoration(
                                                              hintText:
                                                                  "Location",
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .black26),
                                                              floatingLabelBehavior:
                                                                  FloatingLabelBehavior
                                                                      .never,
                                                              // labelStyle: labelTextStyle,
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black26,
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              errorText:
                                                                  locationErrText ==
                                                                          ""
                                                                      ? null
                                                                      : locationErrText),
                                                    ),
                                                  ]),
                                            ),
                                            Container(
                                              width: 10,
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    textFieldTitle2("Quantity"),
                                                    TextField(
                                                      controller: quantityAdd,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .allow(RegExp(
                                                                r'[0-9]'))
                                                      ],
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                      decoration:
                                                          InputDecoration(
                                                              hintText:
                                                                  "Quantity",
                                                              hintStyle: TextStyle(
                                                                  color: Colors
                                                                      .black26),
                                                              floatingLabelBehavior:
                                                                  FloatingLabelBehavior
                                                                      .never,
                                                              // labelStyle: labelTextStyle,
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black26,
                                                                ),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              errorText:
                                                                  quantityErrText ==
                                                                          ""
                                                                      ? null
                                                                      : quantityErrText),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                          textFieldTitle2("Description"),
                                          TextField(
                                            controller: descripAdd,
                                            // minLines: 1,
                                            maxLines: 5,
                                            style:
                                                TextStyle(color: Colors.black),
                                            decoration: InputDecoration(
                                              hintText: "Description",
                                              hintStyle: TextStyle(
                                                  color: Colors.black26),
                                              floatingLabelBehavior:
                                                  FloatingLabelBehavior.never,
                                              // labelStyle: labelTextStyle,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.black26,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                )),
                          ))));
            });
          });
    },
    backgroundColor: Color(0xFF92B4EC),
    child: Theme(
        data: ThemeData(brightness: Brightness.light),
        child: Icon(
          Icons.add,
          color: Colors.white,
        )),
  );
}
