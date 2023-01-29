import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:world_project/screens/home_screen.dart';
import 'package:world_project/screens/profile_screen.dart';
import 'package:world_project/screens/search_screen.dart';
import 'package:world_project/screens/ticket_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int tappedIndex = 0;

  static final List<Widget> _listOfWidgets = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  void setSelectedIndex(int index) {
    setState(() {
      tappedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _listOfWidgets[tappedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tappedIndex,
        onTap: setSelectedIndex,
        elevation: 10.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
          BottomNavigationBarItem(
              label: "Ticket",
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled))
        ],
      ),
    );
  }
}
