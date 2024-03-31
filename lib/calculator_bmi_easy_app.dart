import 'package:flutter/material.dart';
import 'package:calculator_bmi_easy/src/core/router/route_generator.dart';
import 'package:calculator_bmi_easy/src/core/ui/theme/app_theme.dart';

class CalculatorBmiEasyApp extends StatelessWidget {
  const CalculatorBmiEasyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator BMI Easy',
      initialRoute: '/',
      theme: AppTheme.theme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
