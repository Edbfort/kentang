import 'package:flutter/material.dart';

Container gettingstarted_body(context, onPageChange) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Container(
                      child: Text(
                        "Getting Started",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Image(
                        image: AssetImage('assets/potape.png'),
                        width: MediaQuery.of(context).size.width / 4 * 3,
                        height: MediaQuery.of(context).size.height /
                            3, // reduce the height to 140 (3/4 of 187)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Text(
                            "Welcome TO POTAPE !",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Text(
                            "Let us help you in your storage management.",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        onPageChange("login");
                      },
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
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: OutlinedButton(
                      onPressed: () {
                        onPageChange("register");
                      },
                      style: OutlinedButton.styleFrom(
                        // ignore: deprecated_member_use
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(color: Colors.blue),
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
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "If you have a problem contact us at ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            'Customer Service',
                            style: TextStyle(color: Color(0xFF92B4EC)),
                          )
                        ],
                      )),
                ]),
              ),
            ],
          ),
        ),
      ));
}
