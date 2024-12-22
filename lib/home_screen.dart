
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> _navigationItem = [
    const Icon(Icons.home_filled),
    const Icon(Icons.category),
    const Icon(Icons.search),
    const Icon(Icons.account_circle),
    const Icon(Icons.notification_add),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
      bottomNavigationBar: CurvedNavigationBar(items: _navigationItem)
      
    );
  }
}