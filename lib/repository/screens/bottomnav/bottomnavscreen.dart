import 'package:flutter/material.dart';
import 'package:gro_zip/repository/screens/bottomnav/categoryscreen.dart';
import 'package:gro_zip/repository/screens/bottomnav/homescreen.dart';
import 'package:gro_zip/repository/screens/bottomnav/postscreen.dart';
import 'package:gro_zip/repository/screens/bottomnav/receipt.dart';
import 'package:gro_zip/repository/screens/bottomnav/reelscreen.dart';
import 'package:gro_zip/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    PostScreen(),
    ReelScreen(),
    ReceiptScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0XFFE23744),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined), // or Icons.post_add
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined), // or Icons.video_library
            label: "Reel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Receipt",
          ),
        ],
      ),
    );
  }
}
