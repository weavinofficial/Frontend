import 'package:flutter/material.dart';
import 'package:frontend/pages/community_page.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/message_list.dart';
import 'package:frontend/pages/my_page.dart';
import 'package:frontend/pages/upload_thread_page.dart';
import 'package:frontend/widgets/navigation_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final _pages = [
    const HomePage(),
    const CommunityPage(),
    const UploadThreadPage(),
    MessageList(),
    const MyPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavigationBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
