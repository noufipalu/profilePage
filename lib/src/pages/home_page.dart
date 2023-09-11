import 'package:demo1/src/features/profile/profile_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF4F6F6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Column(
            children: [ProfileWidget()],
          ),
        ),
      ),
    );
  }
}
