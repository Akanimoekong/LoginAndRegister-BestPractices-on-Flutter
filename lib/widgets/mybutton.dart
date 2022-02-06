import 'package:flutter/material.dart';

enum ButtonState {
  initial,
  loading,
  disabled,
}

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
    final isLoading = state == ButtonState.loading;
    final isDisabled = state == ButtonState.disabled;
    final overallDisabled = [ButtonState.loading, ButtonState.disabled].contains(state);

    return InkWell(
      onTap: overallDisabled || isDisabled ? null : onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isDisabled?Colors.grey: Colors.blue,
          ),
          height: 64,
          child: Center(
            child: Builder(builder: (context) {
              if (isLoading) {
                return  Transform.scale(
                  scale: 0.6,
                  child: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                );
              }
              return Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
