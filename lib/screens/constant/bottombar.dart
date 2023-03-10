import 'package:collage_recommandation/screens/Auth_Screen/sign_up/sign_up.dart';
import 'package:collage_recommandation/screens/homepage/home/home1.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    ),
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Filters',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    ),
    Container(
      color: Colors.purple,
      child: Center(
        child: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[200],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[600],
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePageOne()));
            },
            icon: Icon(Remix.home_2_fill),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Remix.search_2_fill),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Remix.filter_2_fill),
          label: 'Filter',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SignUpScreen()));
            }, icon: Icon(Remix.user_2_fill),
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
