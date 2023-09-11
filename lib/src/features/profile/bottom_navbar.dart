import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 2,
            selectedItemColor: const Color.fromARGB(230, 52, 174, 56),
            selectedLabelStyle: const TextStyle(
              color: Color.fromARGB(230, 52, 174, 56),
            ),
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(UniconsLine.car),
                label: 'My Cars',
              ),
              BottomNavigationBarItem(
                icon: Icon(UniconsLine.user),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
