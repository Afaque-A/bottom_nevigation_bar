import 'package:bottom_navigation_bar/categoryscreen/category_screen.dart';
import 'package:bottom_navigation_bar/notificationscreen/notification_screen.dart';
import 'package:bottom_navigation_bar/profilescreen/profile_screen.dart';
import 'package:bottom_navigation_bar/searchscreen/search_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _navigationItem = [
    const CategoryScreen(),
    const NotificationScreen(),
    const SearchScreen(),
    const ProfileScreen(),
    const HomeScreen(),
  ];

  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: bgColor,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: bgColor,
          items: _navigationItem,
          onTap: (index) {
            if (index == 0) {
              bgColor = Colors.blueAccent;
            } else if (index == 1) {
              bgColor = Colors.redAccent;
            } else if (index == 2) {
              bgColor = Colors.lightBlue;
            } else if (index == 3) {
              bgColor = Colors.tealAccent;
            } else if (index == 4) {
              bgColor = Colors.deepOrange;
            }
            setState(() {});
          },
        ));
  }
}
