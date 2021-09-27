import 'package:flutter/material.dart';
import 'package:tutor_helper/home.dart';

void main() {
  runApp(SchoolManagement());
}

class SchoolManagement extends StatefulWidget {
  const SchoolManagement({Key? key}) : super(key: key);

  @override
  _SchoolManagementState createState() => _SchoolManagementState();
}

class _SchoolManagementState extends State<SchoolManagement> {
  int _selectedItemIndex = 0;
  final List pages = [
    const HomePage(),
    null,
    null,
    null,
    // const CalendarPage(),
    null,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: const Color(0xFFF0F0F0),
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _selectedItemIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                title: Text(""),
                icon: ImageIcon(
                  AssetImage("assets/icons/home.png"),
                  size: 25,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.insert_chart),
              ),
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                title: Text(""),
                icon: ImageIcon(
                  AssetImage("assets/icons/createpost.png"),
                  size: 23,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: ImageIcon(
                  AssetImage("assets/icons/calendar.png"),
                  size: 23,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.chat_bubble),
              ),
            ],
          ),
          body: pages[_selectedItemIndex]),
    );
  }
}
