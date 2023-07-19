import 'package:flutter/material.dart';
import 'package:organico_with_bloc_cubit/ui/categories/Cart.dart';
import 'package:organico_with_bloc_cubit/ui/categories/Explore.dart';
import 'package:organico_with_bloc_cubit/ui/categories/Profile.dart';
import 'package:organico_with_bloc_cubit/ui/categories/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int _currentIndex = 0;
  Color grey = const Color(0xff92929D);
  final List<dynamic> _screens = const [
    HomePage(),
    ExplorePage(),
    CartPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171725),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: grey,
        backgroundColor: const Color(0xff171725),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_outlined), label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
