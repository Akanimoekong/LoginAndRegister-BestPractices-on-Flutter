import 'package:flutter/material.dart';
import 'package:login_register_best_practices/widgets/mybutton.dart';
import 'package:login_register_best_practices/widgets/mytextbox.dart';
import 'package:login_register_best_practices/widgets/mytextcontainer.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              opacity: 50,
              image: AssetImage("background2.jpg"),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextContainer3(mytext: "Username"),
                const MyTextBox(labelText: "Enter your Username"),
                const TextContainer(mytext: "Email"),
                const MyTextBox(labelText: 'Enter your email'),
                const TextContainer2(mytext: 'Password'),
                const MyTextBox(labelText: 'Enter your email'),
                Mybutton(title: "Register Now", onTap: (){
                  _callApi();
                }, state: buttonState)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _callApi() async {
    changeButtonState = ButtonState.loading;

    await Future.delayed(const Duration(seconds: 3));
    changeButtonState = ButtonState.disabled;
  }
}
