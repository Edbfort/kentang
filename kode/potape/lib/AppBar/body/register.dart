import 'package:flutter/material.dart';

Container textFieldTitle(title_) {
  return Container(
      child: Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Text(
        title_,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  ));
}

Container register_body(
    context, isObs1, isObs2, _isObs1, _isObs2, isTr, _isTru, _onPageChange, nextPage) {
  return Container(
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 8 / 10,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textFieldTitle("Username"),
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
                          labelText: "Username"),
                    ),
                    textFieldTitle("Email"),
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
                    textFieldTitle("Password"),
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
                              icon: Icon(isObs1
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                _isObs1();
                              })),
                    ),
                    textFieldTitle("Confirm Password"),
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
                              icon: Icon(isObs2
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                _isObs2();
                              })),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 4,
              // ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: Color(0xFF92B4EC),
                          onChanged: (isTr) {
                            _isTru();
                          },
                          value: isTr,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  " I agree to the ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF92B4EC)),
                                ),
                                Text(" and",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            ),
                            Text(
                              " Privacy Policy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF92B4EC),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Center(
                        child: SizedBox(
                          width: 350,
                          height: 60,
                          child: ElevatedButton(
                            onPressed:
                                // isTr ? false : null;
                                isTr
                                    ? () {
                                        _onPageChange(nextPage);
                                      }
                                    : null,
                            style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: const Color(0xFF92B4EC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ]),
      ),
    ),
  );
}