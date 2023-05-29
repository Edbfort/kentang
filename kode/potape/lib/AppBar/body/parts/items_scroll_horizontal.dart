import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Container item_container(i, item_container_height, item_container_width) {
  return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            height: item_container_height,
            width: item_container_width,
            child: Center(
              child: Text(i["poin"]!),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF92B4EC),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              width: item_container_width,
              child: Text(
                i["name"].toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: RatingBarIndicator(
                  rating: double.parse(i["rating"]!),
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Color(0xFFFFD24C),
                  ),
                  itemCount: 5,
                  itemSize: 18.0,
                  direction: Axis.horizontal,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 2, left: 10),
                  child: Text(
                    i["rating"]!.toString(),
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              width: item_container_width,
              child: Text(
                "Rp. " + i["cost"].toString() + "k /kg",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )),
        ],
      ));
}
