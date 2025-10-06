import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:splash/src/pages/perfil_screen.dart';
import 'home_screen.dart';
import 'favorite_screen.dart';
import 'settings_screen.dart';

class CurvedNavigationBarPage extends StatefulWidget {
  const CurvedNavigationBarPage({super.key});

  @override
  State<CurvedNavigationBarPage> createState() => _CurvedNavigationBarPageState();
}

class _CurvedNavigationBarPageState extends State<CurvedNavigationBarPage> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
    const PerfilScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[200],
      body: _pages[_pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.deepPurple,
        buttonBackgroundColor: Colors.deepPurpleAccent,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        index: _pageIndex,
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.favorite, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}