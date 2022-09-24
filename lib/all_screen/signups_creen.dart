
import 'package:flutter/material.dart';

import '../colors/colors need.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsNeed.col3,
        width: double.infinity,
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
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            TextFormField(
                              decoration: InputDecoration(hintText: "Name"),
                            ),
                            TextFormField(
                              decoration: InputDecoration(hintText: "Email"),
                            ),
                            TextFormField(
                              decoration:
                              InputDecoration(hintText: "Password"),
                            ),
                            TextFormField(
                              decoration:
                              InputDecoration(hintText: "Phone Number"),
                            ),
                            Checkbox(value:value , onChanged: (value) {


                            }

                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: ColorsNeed.col2,
                                    borderRadius:
                                    BorderRadius.circular(20.0)),
                                width: double.infinity,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed("ChoseScreen");
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height:50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("LoginScreen");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
