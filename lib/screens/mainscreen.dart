import 'package:flutter/material.dart';
import 'package:glitch/screens/games.dart';
import 'package:glitch/screens/roadmap.dart';
import 'package:glitch/screens/doctorreport.dart';
import 'package:glitch/screens/profile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.map, // Use 'map' for roadmap
    Icons.videogame_asset, // Use 'videogame_asset' for games
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

    // Navigate to different screens based on the index.
    if (index == 0) {
      // Handle the "Home" screen navigation here.
    } else if (index == 1) {
      // Navigate to the "RoadmapScreen" when "Roadmap" is clicked.
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => RoadmapScreen(),
      ));
    } else if (index == 2) {
      // Navigate to the "GamesScreen" when "Games" is clicked.
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GamesScreen(),
      ));
    } else if (index == 3) {
      // Navigate to the "DoctorReportScreen" when "Doctor Report" is clicked.
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DoctorReportScreen(),
      ));
    }
  }

  void _onBox1Tapped() {
    // Navigate to the "ProfileScreen" when "Box 1" is clicked.
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ProfileScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        title: Text(
          'GLITCH',
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
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
          Column(
            children: <Widget>[
              // First Row: Box 1 with Gap
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: GestureDetector(
                  onTap: _onBox1Tapped, // Call the onTap function
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    height: 200.0,
                    width: MediaQuery.of(context).size.width *
                        0.8, // Adjust width as needed
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10.0,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10.0,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                height: 200.0,
                width: MediaQuery.of(context).size.width *
                    0.8, // Adjust width as needed
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *
                          0.6, // Adjust width as needed
                      height: 80.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Game 1',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width *
                          0.6, // Adjust width as needed
                      height: 80.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Game 2',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
