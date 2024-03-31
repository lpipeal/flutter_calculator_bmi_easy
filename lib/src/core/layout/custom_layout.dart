import 'package:flutter/material.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container();
    });
  }
}
