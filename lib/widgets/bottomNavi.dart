import 'package:flutter/material.dart';
import 'package:login_register_best_practices/pages/loginpage.dart';
import 'package:login_register_best_practices/pages/signuppage.dart';


class BottomNavi extends StatefulWidget {
  BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int _currentIndex =0;

  final pages = [
    const LoginPage(),
    const SignUpPage()
  ];

  void updateIndex (int value) {
    setState(() {
      _currentIndex =value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: updateIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_rounded),
            label: 'Register',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login_outlined),
            label: 'Login',
          ),
        ],
      ),
    );
  }
}
