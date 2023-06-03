import 'package:flutter/material.dart';

Container shop_body(context) {
  return Container(
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          color: Colors.grey,
          size: MediaQuery.of(context).size.width / 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Something went wrong.",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            TextButton(
                onPressed: null,
                child: Row(
                  children: [
                    Text(
                      "Refresh",
                      style: TextStyle(
                          fontSize: 12, color: Colors.lightBlueAccent),
                    ),
                    Icon(
                      Icons.refresh,
                      size: 18,
                      color: Colors.lightBlueAccent,
                    )
                  ],
                ))
          ],
        )
      ],
    )),
  );
}
