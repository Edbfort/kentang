import 'package:flutter/material.dart';

Container home_body(context, controller, sortedItem,onPageChange,nextPage,currentSingleItem,changeCurrentSingleItem) {
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
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Map<String,dynamic>oneData =  { names.elementAt(index):data.elementAt(index)};
                  changeCurrentSingleItem(oneData); 
                  onPageChange(nextPage);
                },
                onLongPress: () {
                  //Do something
                },
                  title: Text(
                    names.elementAt(index).toString(),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    data.elementAt(index)["gudang"].toString(),
                    style: TextStyle(color: Colors.black54),
                  ),
                  trailing: Text(
                    "Quantity\n ${data.elementAt(index)["quantity"].toString()}",
                    style: TextStyle(color: Colors.black54),
                  ));
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black54,
              );
            },
            itemCount: data.length),
      )
    ]),
  );
}
