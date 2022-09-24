import 'package:flutter/cupertino.dart';

class TT extends StatefulWidget {
  const TT({Key? key}) : super(key: key);

  @override
  State<TT> createState() => _TTState();
}

class _TTState extends State<TT> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Image.asset("assets/images/Tours 01.png")
      ],),
    );
  }
}
