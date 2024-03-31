import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  // final Key key;
  final ButtonStyle buttonStyle;
  final VoidCallback onPressed;
  final Widget contentButton;

  const CustomSubmitButton(
      {required final Key key,
      required this.buttonStyle,
      required this.onPressed,
      required this.contentButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        key: key,
        style: buttonStyle,
        onPressed: onPressed,
        child: contentButton);
  }
}
