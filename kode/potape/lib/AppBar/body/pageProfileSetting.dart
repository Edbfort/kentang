import 'package:flutter/material.dart';
import 'package:flutter_application_2/project/test.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              title: Text(
            'Account',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          )),
          ListTile(
            title: Text(
              'William',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          ListTile(
              title: Text('Manage Account', style: TextStyle(fontSize: 10.0))),
          Divider(),
          ListTile(
              title: Text(
            'Username',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          )),
          ListTile(
            title: Text(
              'Fortin',
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            trailing: Icon(
              Icons.edit,
              size: 12.0,
            ),
          ),
          Divider(),
          ListTile(
              title: Text(
            'EMAIL',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          )),
          ListTile(
              title: Text(
            'Enter your email address for \nnew updates and lastest news.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          )),
        ],
      ),
    );
  }
}
