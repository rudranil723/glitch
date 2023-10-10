import 'package:flutter/material.dart';
import 'package:glitch/screens/mainscreen.dart';
import 'package:glitch/screens/roadmap.dart';
import 'package:glitch/screens/games.dart';

class DoctorReportScreen extends StatefulWidget {
  @override
  _DoctorReportScreenState createState() => _DoctorReportScreenState();
}

class _DoctorReportScreenState extends State<DoctorReportScreen> {
  int _selectedIndex = 3; // Set the default selected index to 'Doctor Report'

  final List<IconData> _icons = [
    Icons.home,
    Icons.directions_car, // Use 'directions_car' for roadmap
    Icons.sports_esports, // Use 'sports_esports' for games
    Icons.local_hospital, // Use 'local_hospital' for doctor report
  ];

  final List<String> _iconNames = [
    'Home',
    'Roadmap',
    'Games',
    'Doctor Report',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      // Navigate to the "MainScreen" when "Home" is clicked.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MainScreen(),
      ));
    } else if (index == 1) {
      // Navigate to the "RoadmapScreen" when "Roadmap" is clicked.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => RoadmapScreen(),
      ));
    } else if (index == 2) {
      // Navigate to the "GamesScreen" when "Games" is clicked.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => GamesScreen(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Report'),
      ),
      body: Stack(
        children: <Widget>[
          // Background Image (Same as other screens)
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // You can add your doctor report content here
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: List.generate(_icons.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(
              _icons[index],
              size: 32.0,
            ),
            label: _iconNames[index],
          );
        }),
      ),
    );
  }
}
