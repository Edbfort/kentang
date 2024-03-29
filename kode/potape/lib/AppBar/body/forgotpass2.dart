import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:potape/AppBar/body/register.dart';

Container forgotpass2_body(
    context,
    isObs1,
    isObs2,
    _isObs1,
    _isObs2,
    onPageChange,
    emailForgot,
    passwordForgot,
    conpasswordForgot,
    usernameEmailErrText,
    emailErrText,
    passwordErrText,
    conpasswordErrText,
    registerErrTextChange,
    labelTextStyle,
    changePassword,
    emailChangePassword,
    emailChangePasswordChange) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          child: Center(
              child: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width * 8 / 10,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    textFieldTitle("Password"),
                    TextField(
                      controller: passwordForgot,
                      obscureText: isObs1,
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
                          labelText: "Password",
                          labelStyle: labelTextStyle,
                          suffixIcon: IconButton(
                              icon: Icon(
                                isObs1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                _isObs1();
                              }),
                          errorText:
                              passwordErrText == "" ? null : passwordErrText),
                    ),
                    textFieldTitle("Confirm Password"),
                    TextField(
                      autocorrect: false,
                      enableSuggestions: false,
                      controller: conpasswordForgot,
                      obscureText: isObs2,
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
                          labelText: "Comfrim Password",
                          labelStyle: labelTextStyle,
                          suffixIcon: IconButton(
                              icon: Icon(
                                isObs2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                _isObs2();
                              }),
                          errorText: conpasswordErrText == ""
                              ? null
                              : conpasswordErrText),
                    ),
                  ])),
              Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Column(children: [
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          usernameEmailErrText = "";
                          emailErrText = "";
                          passwordErrText = "";
                          conpasswordErrText = "";
                          if (passwordForgot.text == "") {
                            passwordErrText = "Password cannot be empty";
                          }
                          if (conpasswordForgot.text == "") {
                            conpasswordErrText =
                                "Confirm Password cannot be empty";
                          } else if (passwordForgot.text !=
                              conpasswordForgot.text) {
                            conpasswordErrText = "Password does not match";
                          }
                          registerErrTextChange([
                            usernameEmailErrText,
                            emailErrText,
                            passwordErrText,
                            conpasswordErrText
                          ]);
                          if (passwordErrText == "" &&
                              conpasswordErrText == "") {
                            changePassword(
                                emailChangePassword, passwordForgot.text);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                "Password Changed",
                                style: TextStyle(color: Colors.white),
                              ),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.black,
                            ));
                            emailChangePasswordChange("");
                            Navigator.maybePop(context);
                            Navigator.maybePop(context);
                            Navigator.maybePop(context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF92B4EC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ])),
            ]),
      ))));
}
