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
            fontFamily: 'SF Pro',
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
              Container(
                color: Colors.purple,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/images/kid.jpg'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Hey USER!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SF Pro',
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Home screen here
                },
              ),
              ListTile(
                title: Text(
                  "Doctor's Report",
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Doctor's Report screen here
                },
              ),
              ListTile(
                title: Text(
                  'Games',
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Games screen here
                },
              ),
              ListTile(
                title: Text(
                  'Roadmap',
                  style: TextStyle(
                    fontFamily: 'SF Pro',
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add your logic for navigating to the Roadmap screen here
                },
              ),
              Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5.0,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
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
                          fontFamily: 'SF Pro',
                        ),
                      ),
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
          // Your content goes here
        ],
      ),
    );
  }
}
