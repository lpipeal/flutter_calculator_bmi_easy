import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final List<Widget> children;
  final Decoration decoration;
  final double? height;
  final double? width;
  final EdgeInsets? padding;

  const CustomCard(
      {super.key,
      required this.children,
      required this.decoration,
      this.height,
      this.width,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: decoration,
      child: Column(
        children: children,
      ),
    );
  }
}
