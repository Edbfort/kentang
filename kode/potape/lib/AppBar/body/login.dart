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

Container login_body(
    context,
    isObs1,
    _isObs1,
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
    loginProfile) {
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
                      controller: username,
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
                              color: Colors.white70,
                            ),
                          ),
                          labelText: "Username",
                          labelStyle: labelTextStyle,
                          errorText:
                              usernameErrText == "" ? null : usernameErrText),
                    ),
                    textFieldTitle("Email"),
                    TextField(
                      controller: email,
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
                    textFieldTitle("Password"),
                    TextField(
                      controller: password,
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Center(
                        child: SizedBox(
                          width: 350,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              usernameErrText = "";
                              emailErrText = "";
                              passwordErrText = "";
                              conpasswordErrText = "";

                              if (username.text == "") {
                                usernameErrText = "Username cannot be empty";
                              }
                              if (email.text == "") {
                                emailErrText = "Email cannot be empty";
                              }
                              if (password.text == "") {
                                passwordErrText = "Password cannot be empty";
                              }
                              try {
                                if (usernameErrText == "" &&
                                    emailErrText == "" &&
                                    passwordErrText == "" &&
                                    conpasswordErrText == "") {
                                  if (server_profiles[username.text
                                                      .toString()]![
                                                  "profileData"]!["email"]
                                              .toString() !=
                                          email.text.toString() ||
                                      server_profiles[username.text
                                                      .toString()]![
                                                  "profileData"]!["password"]
                                              .toString() !=
                                          password.text.toString()) {
                                    throw "Login Check Fail";
                                  }
                                }
                              } catch (err) {
                                usernameErrText =
                                    "Username/Email/Password is incorrect";
                                emailErrText =
                                    "Username/Email/Password is incorrect";
                                passwordErrText =
                                    "Username/Email/Password is incorrect";
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
                                loginProfile(username.text.toString());
                                onPageChange(nextPage);
                              }
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
