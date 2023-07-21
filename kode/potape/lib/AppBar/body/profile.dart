import 'package:flutter/material.dart';

Container profile_body(currentAccount) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            leading: Text(
          'Account',
          style: TextStyle(
            color: Colors.grey,
          ),
        )),
        ListTile(
          leading: Text(
            currentAccount.keys.first,
            style: TextStyle(),
          ),
        ),
        ListTile(
            leading: TextButton(
          onPressed: () {},
          child: Text('Manage Account',
              style: TextStyle(color: Color(0xFF2196F3))),
        )),
        Divider(
          color: Colors.white54,
          thickness: 0.5,
        ),
        ListTile(
            leading: Text(
          'Username',
          style: TextStyle(
            color: Colors.grey,
          ),
        )),
        ListTile(
            leading: Text(
              currentAccount.keys.first,
              style: TextStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
              ),
            )),
        Divider(
          color: Colors.white54,
          thickness: 0.5,
        ),
        ListTile(
            leading: Text(
          'Email',
          style: TextStyle(
            color: Colors.grey,
          ),
        )),
        ListTile(
            leading: Text(
              currentAccount.values.first["profileData"]["email"],
              style: TextStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            )),
      ],
    ),
  );
}
