import 'package:flutter/material.dart';

class VisitScreen extends StatefulWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.segment_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "TOURS",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Popular Destination",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blue)),
            Text("10 Tours Avialable"),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 10.0, right: 10.0, left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Image.asset(
                            "assets/images/eiffel_tower.jpg",
                            width: 80,
                            height: 80,
                          ),
                        ),
                        Text(
                          "Paris",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 10.0, right: 10.0, left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0)),
                          child: Image.asset(
                            "assets/images/IndiaBlog_Main-730x410.jpg",
                            width: 80,
                            height: 80,
                          ),
                        ),
                        Text(
                          "India",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(top: 10.0, right: 10.0, left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Image.asset(
                          "assets/images/new yourk.jpg",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Text(
                        "New York",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(top: 10.0, right: 10.0, left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Image.asset(
                          "assets/images/hapan.jpg",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Text(
                        "Los Angeles",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
            Column(
              children: [
                Image.asset("assets/images/Offer.png"),
                Image.asset("assets/images/Discover Places.png"),

              ],
            )
          ],
        ),
      ),
    );
  }
}
