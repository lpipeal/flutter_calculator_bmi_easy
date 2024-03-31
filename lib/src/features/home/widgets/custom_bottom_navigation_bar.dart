import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: _buildNavigationBottomBar());
  }

  List<BottomNavigationBarItem> _buildNavigationBottomBar() {
    List<BottomNavigationBarItem> itemsNavigationBar = [];

    itemsNavigationBar.add(const BottomNavigationBarItem(
        key: Key('NavigationBarItemMenu'),
        label: "Home",
        icon: Icon(Icons.home)));

    itemsNavigationBar.add(const BottomNavigationBarItem(
        key: Key('NavigationBarItemConfiguration'),
        label: "Configuracion",
        icon: Icon(Icons.settings)));

    return itemsNavigationBar;
  }
}
