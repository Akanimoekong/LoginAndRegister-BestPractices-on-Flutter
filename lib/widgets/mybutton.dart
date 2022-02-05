import 'package:flutter/material.dart';

enum ButtonState {
  initial,
  loading,
  disabled, }

class Mybutton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final ButtonState state;

  const Mybutton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IsLoading = state == ButtonState.loading;
    final isDisabled = [ButtonState.loading, ButtonState.disabled].contains(state);


    return InkWell(
      onTap: isDisabled ? null: () {
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          height: 64,
          child: Center(
            child: Text(title, style: const TextStyle(color: Colors.white,),),
          ),
        ),
      ),
    );
  }
}
