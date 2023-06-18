import 'package:flutter/material.dart';
import 'package:potape/AppBar/body/register.dart';

Container forgotpass2_body(context, isObs1, isObs2, _isObs1, _isObs2) {
  return Container(
    margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 10,
        left: MediaQuery.of(context).size.width / 10,
        right: MediaQuery.of(context).size.width / 10),
    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(
        children: [
          textFieldTitle("Password"),
        ],
      ),
      TextField(
        obscureText: isObs1,
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
            labelText: "Password",
            suffixIcon: IconButton(
                icon: Icon(isObs1 ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  _isObs1();
                })),
      ),
      Row(
        children: [
          textFieldTitle("Confirm Password"),
        ],
      ),
      TextField(
        obscureText: isObs2,
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
            labelText: "Comfrim Password",
            suffixIcon: IconButton(
                icon: Icon(isObs2 ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  _isObs2();
                })),
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
            'Contiue',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    ]),
  );
}
