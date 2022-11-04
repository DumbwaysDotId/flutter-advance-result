import 'package:flutter/material.dart';
import './src/screens/AnimatedContainer.dart';
import './src/screens/AnimatedPosition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetList = [
    AnimatedContainerPage(),
    AnimatedPositionPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: _widgetList.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.wrap_text), label: 'Container'),
            BottomNavigationBarItem(
                icon: Icon(Icons.drag_handle), label: 'Position')
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
