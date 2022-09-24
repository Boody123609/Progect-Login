import 'package:flutter/material.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {  
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
              child: Image.asset("assets/images/Vector1 Image.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Plan Your Trip",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Plan your trip,choose your destination.Pick the best place for your holiday",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 70,
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
                      Navigator.of(context).pushNamed("SecondScreen");
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
