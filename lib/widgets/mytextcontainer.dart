import 'package:flutter/material.dart';
class TextContainer extends StatelessWidget {
  final String mytext;
  const TextContainer(
      {Key? key,
        required this.mytext}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "Email",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class TextContainer2 extends StatelessWidget {
  final String mytext;
  const TextContainer2(
      {Key? key,
        required this.mytext}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "Password",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
