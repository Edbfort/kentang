import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Container otp_body(
    context,
    onPageChange,
    nextPage,
    username,
    email,
    password,
    addNewProfile,
    otpText,
    otpErrText,
    otpNum,
    otpTime,
    dgoNum,
    dgoTime,
    dgostartTimer,
    TextEditingController otpF1,
    TextEditingController otpF2,
    TextEditingController otpF3,
    TextEditingController otpF4,
    OtpTextFieldWilliamTolol,
    otpPurpose,
    homeGrafItemChange,
    sortedItem) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          child: Column(children: [
        Center(
            child: Container(
          height: MediaQuery.of(context).size.height - 100,
          width: MediaQuery.of(context).size.width * 8 / 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 7,
                        bottom: 16,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              child: SizedBox(
                            height: 80,
                            child: OtpTextFieldWilliamTolol(
                              context: context,
                              nextPage: "home",
                              handleControllers: [
                                otpF1,
                                otpF2,
                                otpF3,
                                otpF4,
                              ], //taruh controler agar bisa di kosongkan nanti setelah submit
                              numberOfFields: 4,
                              fieldWidth: 70.0,
                              borderColor: Color(0xFF182631),
                              focusedBorderColor: Color(0xFF2196F3),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]'))
                              ],
                              addNewProfile: addNewProfile,
                              otpPurpose: otpPurpose,
                              sortedItem: sortedItem,
                            ),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "OTP Code sent " + otpTime.inSeconds.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              dgostartTimer();
                            },
                            child: Text(
                              dgoNum == "WilliamTolol"
                                  ? "Didn't get code?"
                                  : dgoTime.inSeconds.toString() == "0"
                                      ? "Didn't get code?"
                                      : "Resend Code in " +
                                          dgoTime.inSeconds.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2196F3)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 8,
                  child: Column(
                    children: [
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: const Color(0xFF92B4EC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(
                            otpPurpose == "register"
                                ? 'Register'
                                : otpPurpose == "forgotpass"
                                    ? 'Next'
                                    : "",
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
                        style: TextStyle(
                            color: Color(0xFF92B4EC),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
        ))
      ])));
}
