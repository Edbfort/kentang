import 'package:flutter/material.dart';

Container setting_body() {
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
            'William',
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
              'Fortin',
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
          'Enter your email address for \nnew updates and lastest news.',
          style: TextStyle(
            color: Colors.grey,
          ),
        )),
      ],
    ),
  );
}
