import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
              Image.asset("assets/images/Vector Image.png"),
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
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("LoginScreen");
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(
                  width: 260,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("ThirdScreen");
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

}
