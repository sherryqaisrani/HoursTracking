import 'package:atto/screen/activity.dart';
import 'package:atto/screen/setting.dart';
import 'package:atto/screen/time_clock.dart';
import 'package:atto/screen/timesheet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    Activity(),
    TimeClock(),
    Timesheet(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_add_alt_outlined,

              ),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.timer,

              ),
              label: 'TimeClock'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.timer_off_outlined,

              ),
              label: 'TimeSheet'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,

              ),
              label: 'Setting'),
        ],
      ),
    );
  }
}
