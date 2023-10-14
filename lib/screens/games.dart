import 'package:flutter/material.dart';
import 'package:glitch/screens/mainscreen.dart';
import 'package:glitch/screens/roadmap.dart';
import 'package:glitch/screens/doctorreport.dart';
import 'package:glitch/screens/game1.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  int _selectedIndex = 2; // Set the default selected index to 'Games'

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
    } else if (index == 3) {
      // Navigate to the "DoctorReportScreen" when "Doctor Report" is clicked.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => DoctorReportScreen(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Games'),
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
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 25.0), // Add gap between top bar and box 1
                // First Box
                Container(
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
                  height: 400.0,
                  width: MediaQuery.of(context).size.width *
                      0.8, // Adjust width as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Row 1: Text
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Single Player Game',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                      // Row 2: Button 1
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 55.0,
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
                          child: TextButton(
                            onPressed: () {
                              // Navigate to the "Game1" screen when "game 1" button is clicked.
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Game1(),
                              ));
                            },
                            child: Center(
                              child: Text(
                                'game 1',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Row 3: Button 2
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 55.0,
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
                              'game 2',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Row 4: Button 3
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 55.0,
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
                              'game 3',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0), // Add gap between boxes
                // Second Box
                Container(
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
                  height: 250.0,
                  width: MediaQuery.of(context).size.width *
                      0.8, // Adjust width as needed
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Row 1: Text "Multi Player Game"
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Multi Player Game',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                      // Row 2: Button with border
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Colors.black, // Border color
                            ),
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
                              'Play Multiplayer',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
