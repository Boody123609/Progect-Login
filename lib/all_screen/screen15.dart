import 'package:flutter/cupertino.dart';

class Screen15 extends StatefulWidget {
  const Screen15({Key? key}) : super(key: key);

  @override
  State<Screen15> createState() => _Screen15State();
}

class _Screen15State extends State<Screen15> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Single Listing - 01.png")
        ],
      ),
    );
  }
}
