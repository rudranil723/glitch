import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.purple,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/kid.jpg'),
                      radius: 40.0,
                      backgroundColor: Colors.white,
                      // Add shadow to the image circle
                      // shadows: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.3),
                      //     blurRadius: 5.0,
                      //     offset: Offset(0, 3),
                      //   ),
                      // ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Hey USER!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SF Pro',
                        // Add shadow to the text
                        shadows: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Home screen here
                },
              ),
              ListTile(
                title: Text("Doctor's Report"),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Doctor's Report screen here
                },
              ),
              ListTile(
                title: Text('Games'),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Games screen here
                },
              ),
              ListTile(
                title: Text('Roadmap'),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Roadmap screen here
                },
              ),
              Divider(),
              // Centered Log Out Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your logout logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    elevation: 5.0,
                    shadowColor: Colors.black.withOpacity(0.3),
                  ),
                  child: Text(
                    'Log Out',
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
          // Three Rows of Boxes
          Column(
            children: <Widget>[
              // First Row: Box 1 with Gap
              Padding(
                padding: EdgeInsets.only(top: 15.0),
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
              // Second Row: Box 2 and Box 3
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
              // Third Row: Box 4 with Buttons
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
                      height: 70.0,
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
    );
  }
}
