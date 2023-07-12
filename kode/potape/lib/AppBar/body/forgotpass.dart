import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:potape/AppBar/body/register.dart';

Container forgotpass_body(
    context,
    onPageChange,
    Map<String, Map<String, Map<String, dynamic>>> server_profiles,
    emailForgot,
    usernameErrText,
    emailErrText,
    passwordErrText,
    conpasswordErrText,
    registerErrTextChange,
    labelTextStyle,
    otpstartTimer,
    otpF1,
    otpF2,
    otpF3,
    otpF4,
    resetOtpList,
    otpPurposeChange,
    emailChangePassword,
    emailChangePasswordChange) {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Column(children: [
      textFieldTitle("Email"),
      TextField(
        inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'[ ]'))],
        controller: emailForgot,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF182631),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 2,
                color: Colors.blueGrey,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 2,
                color: Colors.blueGrey,
              ),
            ),
            labelText: "Email",
            labelStyle: labelTextStyle,
            errorText: emailErrText == "" ? null : emailErrText),
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
            usernameErrText = "";
            emailErrText = "";
            passwordErrText = "";
            conpasswordErrText = "";

            if (emailForgot.text == "") {
              emailErrText = "Email cannot be empty";
            } else {
              emailErrText = "Couldn't find your Account";
              for (Map<String, Map<String, dynamic>> data
                  in server_profiles.values) {
                if (data["profileData"]!["email"].toString() ==
                    emailForgot.text) {
                  emailErrText = "";
                  break;
                }
              }
            }

            registerErrTextChange([
              usernameErrText,
              emailErrText,
              passwordErrText,
              conpasswordErrText
            ]);
            if (emailErrText == "") {
              otpstartTimer();
              otpF1.clear();
              otpF2.clear();
              otpF3.clear();
              otpF4.clear();
              resetOtpList();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "OTP Sent",
                  style: TextStyle(color: Colors.white),
                ),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.black,
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height - 100),
              ));
              emailChangePasswordChange(emailForgot.text);
              otpPurposeChange("forgotpass");
              onPageChange("otp");
            }
            ;
          },
          style: ElevatedButton.styleFrom(
            // ignore: deprecated_member_use
            primary: const Color(0xFF92B4EC),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text(
            'Next',
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
