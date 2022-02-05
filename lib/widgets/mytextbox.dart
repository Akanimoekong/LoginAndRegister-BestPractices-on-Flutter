import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String labelText;
  const MyTextBox(
      {Key? key,
        required this.labelText,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
                border: const OutlineInputBorder(), labelText: labelText),),
      ),
    );
  }
}
