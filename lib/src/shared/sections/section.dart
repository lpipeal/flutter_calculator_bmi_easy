import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final List<Widget> widgets;
  const Section({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: widgets,
      ),
    );
  }
}
