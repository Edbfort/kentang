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

Container login_body(
    context,
    isObs1,
    _isObs1,
    onPageChange,
    nextPage,
    Map<String, Map<String, Map<String, dynamic>>> server_profiles,
    usernameEmail,
    email,
    password,
    conpassword,
    usernameEmailErrText,
    emailErrText,
    passwordErrText,
    conpasswordErrText,
    registerErrTextChange,
    labelTextStyle,
    loginProfile,
    userCheck,
    usernameEmailCheck,
    homeGrafItemChange,
    sortedItem) {
  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height - 50,
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
                        textFieldTitle("Username/Email"),
                        TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'[ ]'))
                          ],
                          controller: usernameEmail,
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
                              labelText: "Username/Email",
                              labelStyle: labelTextStyle,
                              errorText: usernameEmailErrText == ""
                                  ? null
                                  : usernameEmailErrText),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                onPageChange("forgotpass");
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2196F3)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have account?"),
                            TextButton(
                              onPressed: () {
                                onPageChange("register");
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2196F3)),
                              ),
                            ),
                          ],
                        ),
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
                                  usernameEmailErrText = "";
                                  emailErrText = "";
                                  passwordErrText = "";
                                  conpasswordErrText = "";

                                  if (usernameEmail.text == "") {
                                    usernameEmailErrText =
                                        "Username/Email cannot be empty";
                                  }
                                  if (password.text == "") {
                                    passwordErrText =
                                        "Password cannot be empty";
                                  }
                                  try {
                                    if (usernameEmailErrText == "" &&
                                        emailErrText == "" &&
                                        passwordErrText == "" &&
                                        conpasswordErrText == "") {
                                      userCheck = usernameEmailCheck(
                                          usernameEmail.text.toString(),
                                          password.text.toString(),
                                          server_profiles);
                                      if (userCheck[0]) {
                                        throw "Login Check Fail";
                                      }
                                    }
                                  } catch (err) {
                                    usernameEmailErrText =
                                        "Username/Email/Password is incorrect";
                                    emailErrText =
                                        "Username/Email/Password is incorrect";
                                    passwordErrText =
                                        "Username/Email/Password is incorrect";
                                  }

                                  registerErrTextChange([
                                    usernameEmailErrText,
                                    emailErrText,
                                    passwordErrText,
                                    conpasswordErrText
                                  ]);
                                  if (usernameEmailErrText == "" &&
                                      emailErrText == "" &&
                                      passwordErrText == "" &&
                                      conpasswordErrText == "") {
                                    loginProfile(userCheck[1].toString());
                                    if (sortedItem.values
                                            .elementAt(0)["items"]
                                            .keys
                                            .length >
                                        0) {
                                      homeGrafItemChange(sortedItem.values
                                          .elementAt(0)["items"]
                                          .keys
                                          .elementAt(0)
                                          .toString());
                                    } else {
                                      homeGrafItemChange("");
                                    }
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
      ));
}
