import 'package:flutter/material.dart';
import '../../imc_calculator/presentation/widgets/form_calculator.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import '/src/shared/shared.dart';
import '/src/core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.theme().colorScheme.primary,
        centerTitle: true,
        title: const Text(
          'Calculator BMI Easy',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Section(
        widgets: _buildCards(size),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  _buildCards(Size size) {
    return [
      Padding(
        padding: const EdgeInsets.all(10),
        child: CustomCard(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                color: AppTheme.theme().colorScheme.primary,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          children: const [
            FormCalculatorImc(),
          ],
        ),
      ),
    ];
  }
}
