import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    context,
    isObs1,
    isObs2,
    _isObs1,
    _isObs2,
    isTr,
    _isTru,
    onPageChange,
    nextPage,
    Map<String, Map<String, Map<String, dynamic>>> server_profiles,
    username,
    email,
    password,
    conpassword,
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
    regisEmailTextChange,
    regisPasswordTextChange,
    regisUsernameTextChange) {
  // List<String> errTextType = ["empty", "incorrect", "false"];
  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height - 100,
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
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9a-zA-Z]')),
                                FilteringTextInputFormatter.deny(RegExp(r'[ ]'))
                              ],
                              controller: username,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF182631),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
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
                                      color: Colors.white70,
                                    ),
                                  ),
                                  labelText: "Username",
                                  labelStyle: labelTextStyle,
                                  errorText: usernameErrText == ""
                                      ? null
                                      : usernameErrText),
                            ),
                            textFieldTitle("Email"),
                            TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(r'[ ]'))
                              ],
                              controller: email,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF182631),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
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
                                  errorText:
                                      emailErrText == "" ? null : emailErrText),
                            ),
                            textFieldTitle("Password"),
                            TextField(
                              controller: password,
                              obscureText: isObs1,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF182631),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
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
                                  errorText: passwordErrText == ""
                                      ? null
                                      : passwordErrText),
                            ),
                            textFieldTitle("Confirm Password"),
                            TextField(
                              autocorrect: false,
                              enableSuggestions: false,
                              controller: conpassword,
                              obscureText: isObs2,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFF182631),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
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
                          ],
                        ),
                      ),
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
                                  activeColor: Colors.blueGrey,
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
                                          style: TextStyle(),
                                        ),
                                        Text(
                                          "Terms of Service",
                                          style: TextStyle(
                                              color: Color(0xFF92B4EC)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(" and", style: TextStyle()),
                                        Text(
                                          " Privacy Policy",
                                          style: TextStyle(
                                            color: Color(0xFF92B4EC),
                                          ),
                                        )
                                      ],
                                    ),
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
                                                usernameErrText = "";
                                                emailErrText = "";
                                                passwordErrText = "";
                                                conpasswordErrText = "";

                                                if (username.text == "") {
                                                  usernameErrText =
                                                      "Username cannot be empty";
                                                } else if (server_profiles
                                                    .containsKey(
                                                        username.text)) {
                                                  usernameErrText =
                                                      "Username is already taken";
                                                }
                                                if (email.text == "") {
                                                  emailErrText =
                                                      "Email cannot be empty";
                                                } else {
                                                  for (Map<
                                                          String,
                                                          Map<String,
                                                              dynamic>> data
                                                      in server_profiles
                                                          .values) {
                                                    if (data["profileData"]![
                                                                "email"]
                                                            .toString() ==
                                                        email.text) {
                                                      emailErrText =
                                                          "Email is already used";
                                                      break;
                                                    }
                                                  }
                                                }
                                                if (password.text == "") {
                                                  passwordErrText =
                                                      "Password cannot be empty";
                                                }
                                                if (conpassword.text == "") {
                                                  conpasswordErrText =
                                                      "Confirm Password cannot be empty";
                                                } else if (password.text !=
                                                    conpassword.text) {
                                                  conpasswordErrText =
                                                      "Password does not match";
                                                }
                                                registerErrTextChange([
                                                  usernameErrText,
                                                  emailErrText,
                                                  passwordErrText,
                                                  conpasswordErrText
                                                ]);
                                                if (usernameErrText == "" &&
                                                    emailErrText == "" &&
                                                    passwordErrText == "" &&
                                                    conpasswordErrText == "") {
                                                  otpstartTimer();
                                                  otpF1.clear();
                                                  otpF2.clear();
                                                  otpF3.clear();
                                                  otpF4.clear();
                                                  resetOtpList();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                    content: Text(
                                                      "OTP Sent",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    behavior: SnackBarBehavior
                                                        .floating,
                                                    backgroundColor:
                                                        Colors.black,
                                                  ));
                                                  regisEmailTextChange(
                                                      email.text);
                                                  regisPasswordTextChange(
                                                      password.text);
                                                  regisUsernameTextChange(
                                                      username.text);
                                                  otpPurposeChange("register");
                                                  onPageChange(nextPage);
                                                }
                                                ;
                                              }
                                            : null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF92B4EC),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
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
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ));
}
