
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                "assets/images/Logo Color.png",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child:
              Image.asset("assets/images/Vector3 Image.png"),
            ),

            SizedBox(
              height: 10,
            ),
            Text(
              "Select The Data",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Select the day ,book your ticket. We give you the best price.We guarantied!",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("LoginScreen");

                },
                child: Text(
                  "LET'S GO!",
                  style: TextStyle(fontSize:16),
                )),
          ],
        ),
      ),
    );
  }
}
