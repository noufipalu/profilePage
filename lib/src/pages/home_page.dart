import 'package:demo1/src/features/profile/profile_page_widget.dart';
import 'package:demo1/src/pages/my_cars.dart';
import 'package:demo1/src/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;
  List<Widget> _fragment = [SearchPage(), MyCars(), ProfilePageWidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Column(
            children: [
              _fragment[_selectedIndex],
              const SizedBox(
                height: 159,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (selectedItem) {
          setState(() {
            _selectedIndex = selectedItem;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
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
    );
  }
}
