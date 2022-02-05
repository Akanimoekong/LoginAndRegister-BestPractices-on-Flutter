import 'package:flutter/material.dart';
import 'package:login_register_best_practices/widgets/mybutton.dart';
import 'package:login_register_best_practices/widgets/mytextbox.dart';
import 'package:login_register_best_practices/widgets/mytextcontainer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get keyBoardType => null;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 50,
                image: AssetImage("asset/background1.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TextContainer(mytext: "Email",),
              const MyTextBox(labelText: "Enter your Email",  ),
              const TextContainer2(mytext: "Password",),
              const MyTextBox(labelText: "Enter your Password"),
              Mybutton(
                  title: "Submit", onTap: () {}, state: ButtonState.initial)
            ],
          ),
        ),
      )),
    );
  }
}