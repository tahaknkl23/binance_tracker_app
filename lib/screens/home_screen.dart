// lib/screens/home_screen.dart
import 'package:binance_app/screens/crypto_screen.dart';
import 'package:binance_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  PageScreenState createState() => PageScreenState();
}

class PageScreenState extends State<PageScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const CryptosScreen(),
    const SettingsScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Cryptos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
