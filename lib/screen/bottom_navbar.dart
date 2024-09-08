import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screen/bookmark_screen.dart';
import 'package:news_app/screen/home_screen.dart';
import 'package:news_app/screen/notification_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const BookmarkScreen(),
    const NotificationScreen(),
  ];

  void bottomNavView(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: bottomNavView,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/icon/home_selected_icon.svg')
                : SvgPicture.asset('assets/icon/home_unselected_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/icon/bookmark_selected_icon.svg')
                : SvgPicture.asset('assets/icon/bookmark_unselected_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/icon/notification_selected_icon.svg')
                : SvgPicture.asset(
                    'assets/icon/notification_unselected_icon.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/icon/profile_selected_icon.svg')
                : SvgPicture.asset('assets/icon/profile_unselected_icon.svg'),
            label: '',
          ),
        ],
      ),
    );
  }
}
