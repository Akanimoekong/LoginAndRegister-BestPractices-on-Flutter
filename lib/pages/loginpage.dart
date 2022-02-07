import 'package:flutter/material.dart';
import 'package:login_register_best_practices/widgets/bottomNavi.dart';
import 'package:login_register_best_practices/widgets/mybutton.dart';
import 'package:login_register_best_practices/widgets/mytextbox.dart';
import 'package:login_register_best_practices/widgets/mytextcontainer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ButtonState buttonState = ButtonState.initial;
  set changeButtonState(ButtonState value) {
    setState(() {
      buttonState = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 30,
              image: AssetImage("assets/background1.jpg"),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextContainer(
                  mytext: "Email",
                ),
                const MyTextBox(
                  labelText: "Enter your Email",
                ),
                const TextContainer2(
                  mytext: "Password",
                ),
                const MyTextBox(labelText: "Enter your Password"),
                Mybutton(
                    title: "Submit",
                    onTap: () {
                      _callApi();
                    },
                    state: buttonState)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavi(),
      ),
    );
  }

  _callApi() async {
    changeButtonState = ButtonState.loading;
    await Future.delayed(const Duration(seconds: 3));
    changeButtonState = ButtonState.disabled;
  }
}
