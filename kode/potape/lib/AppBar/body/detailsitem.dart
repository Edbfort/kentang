import 'package:flutter/material.dart';

Container detailsietm_body(context, currentItem) {
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height / 1,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // left: MediaQuery.of(context).size.width/20,right: MediaQuery.of(context).size.width/20
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            ListTile(
              title: Text(
                currentItem.keys.first.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              subtitle: Text(
                currentItem[currentItem.keys.first.toString()]["gudang"]
                    .toString(),
                style: TextStyle(color: Colors.black45),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Quantity: ${currentItem[currentItem.keys.first.toString()]["quantity"].toString()}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text("Item Berambah 12",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 25,
                right: MediaQuery.of(context).size.width / 25,
              ),
              child: Align(
                // alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi Lengap",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Text(
                      currentItem[currentItem.keys.first.toString()]
                          ["deskripsi"],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                  ],
                ),
              ),
            ),
            ListTile()
          ],
        ),
      ));
}
