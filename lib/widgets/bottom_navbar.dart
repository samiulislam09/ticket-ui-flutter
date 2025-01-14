import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/home.dart';
import 'package:ticket/screens/profile.dart';
import 'package:ticket/screens/search.dart';
import 'package:ticket/screens/ticket.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int screenCount = 0;

  final appScreens = [
    const Home(),
    const Search(),
    const Ticket(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: screenCount,
        showSelectedLabels: false,
        onTap: (index) {
          setState(() {
            screenCount = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_12_regular),
              label: "Home",
              activeIcon: Icon(FluentIcons.home_12_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_12_regular),
              label: "Search",
              activeIcon: Icon(FluentIcons.search_12_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket_diagonal_16_regular),
              label: "Ticket",
              activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled)),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_12_regular),
              label: "Profile",
              activeIcon: Icon(FluentIcons.person_12_filled)),
        ],
      ),
      body: appScreens[screenCount],
    );
  }
}
