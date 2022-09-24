import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForthScreen extends StatefulWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.cancel,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/Pr1.png",
              width: 130,
              height: 200,
            ),

          ),
          Text(
            "Kenneth Gutierrez",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text("kenneth_gutierrez@gmail.com"),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                        color: Colors.red,
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                        color: Colors.lightBlue,
                        child: Icon(
                          Icons.airplanemode_on_outlined,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Tours",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        color: Colors.purple,
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Location",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        color: Colors.blue,
                        child: Icon(
                          Icons.language,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Language",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        color: Colors.lightBlue,
                        child: Icon(
                          Icons.people,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Invite Friends",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        color: Colors.yellow,
                        child: Icon(
                          Icons.headphones,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Help Center",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        color: Colors.green,
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        color: Colors.black12,
                        child: Icon(
                          Icons.logout,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Log Out",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
