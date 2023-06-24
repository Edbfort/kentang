import 'package:flutter/material.dart';
import 'package:potape/AppBar/body/register.dart';

Container forgotpass_body(context) {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Column(children: [
      Row(
        children: [
          textFieldTitle("Email"),
        ],
      ),
      TextField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 2,
                color: Color.fromARGB(255, 146, 180, 236),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 2,
                color: Color.fromARGB(255, 146, 180, 236),
              ),
            ),
            labelText: "Email"),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 60,
      ),
      Row(children: [
        Expanded(
            child: SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromARGB(255, 146, 180, 236),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromARGB(255, 146, 180, 236),
                  ),
                ),
                labelText: "Insert 4 digit code here"),
          ),
        )),
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Get OTP"),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF92B4EC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
            ),
          ),
        ),
      ]),
      Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 25,
            top: MediaQuery.of(context).size.height / 50),
      ),
      Text(
        "Enter your 4 digit verification code here",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 2.50,
      ),
      Divider(
        thickness: 2,
      ),
      SizedBox(
        width: 350,
        height: 60,
        child: ElevatedButton(
          onPressed: () {
            // onPageChange(nextPage);
          },
          style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: const Color(0xFF92B4EC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text(
            'Register',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Try Another Option?",
        style: TextStyle(color: Color(0xFF92B4EC), fontWeight: FontWeight.bold),
      )
    ]),
  );
}
