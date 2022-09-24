import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../places_response.dart';

class ChoseScreen extends StatefulWidget {
  const ChoseScreen({Key? key}) : super(key: key);

  @override
  State<ChoseScreen> createState() => _ChoseScreenState();
}

class _ChoseScreenState extends State<ChoseScreen> {
  bool IsLoading = false;


  get access_token => null;
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
          "Location",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  wantelase();
                  Navigator.of(context).pushNamed("TT");
                },
                child: Image.asset(
                  "assets/images/statue-liberty.jpg",
                  width: 380,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("TT");
                },
                child: Image.asset(
                  "assets/images/eiffel_tower.jpg",
                  width: 380,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  wantelase();
                  Navigator.of(context).pushNamed("TT");
                },
                child: Image.asset(
                  "assets/images/IndiaBlog_Main-730x410.jpg",
                  width: 380,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  wantelase();
                  Navigator.of(context).pushNamed("TT");
                },
                child: Image.asset(
                  "assets/images/london-attractions-.webp",
                  width: 380,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("TT");
                },
                child: Image.asset(
                  "assets/images/Hell-Gate-Bridge.jpg",
                  width: 380,
                ),
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "ff",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "bag",),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month_sharp),label: "bag",),
        // BottomNavigationBarItem(icon: Icon(Icons.person),label: "bag",),

      ],),
    );

  }
  Future wantelase() async {
    setState(() {
      IsLoading = true;
    });

    Response response =
    await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
      "Authorization": "Bearer $access_token",
    });

    var placeJson = jsonDecode(response.body);

    setState(() {
      var myplace = Places.fromJson(placeJson);
      if (response.statusCode == 200) {
        myplace = Places.fromJson(placeJson);
        print(myplace);
        Navigator.of(context).pushNamed("TT");
      } else {
        print(placeJson["message"]);
      }
    });

    setState(() {
      IsLoading = false;
    });
  }
}
