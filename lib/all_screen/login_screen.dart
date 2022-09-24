import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:masrooa/jeson_pages/jeson_login.dart';

import '../colors/colors need.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  bool IsLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsNeed.col3,
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Image.asset(
                    "assets/images/Logo White.png",
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32.0)),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32.0)),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(55),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Email"),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.contains("@")) {
                                return "Email is wrong";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                email = value!;
                              });
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Password"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "password is wrong";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                password = value!;
                              });
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Forget Password?",
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child:IsLoading? Center(child: CircularProgressIndicator(),) : ElevatedButton(
                                  onPressed: () {
                                    login();
                                    Navigator.of(context).pushNamed("ChoseScreen");

                                  },
                                  child: Center(
                                      child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 115,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("SignUpScreen");
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future login() async {
    setState(() {
      IsLoading = true;
    });
    Response response = await post(Uri.parse("http://alcaptin.com/api/login"),
      body: {
      "email":email,
      "password":password,
      }

    );
    dynamic convertedJson = jsonDecode(response.body);
    if(response.statusCode==200){
      JesonLogin userData= JesonLogin.fromJson(convertedJson);
      Navigator.of(context).pushNamed("ChoseScreen");
    }else{
      print(convertedJson["message "]);
    }




    setState(() {
      IsLoading = false;
    });
  }
}
