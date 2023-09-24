import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double boxHeight = screenHeight *
        0.75; // Set the height of the box to 75% of the screen height

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Image.asset(
            'assets/images/bg.jpeg', // Updated image path
            fit: BoxFit.cover, // Adjust the fit as needed
            width: double.infinity, // Cover the entire screen width
            height: double.infinity, // Cover the entire screen height
          ),
          // Positioned White Box
          Positioned(
            top: screenHeight *
                0.65, // Set the top position to 65% of the screen height
            left: 0,
            right: 0,
            bottom: 0, // Extend the box beyond the screen
            child: Container(
              height: boxHeight, // Set the height to 75% of the screen height
              decoration: BoxDecoration(
                color: Colors.white, // White background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0), // Rounded top-left corner
                  topRight: Radius.circular(40.0), // Rounded top-right corner
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    blurRadius: 10.0, // Blur radius
                    offset: Offset(0, 5), // Shadow offset
                  ),
                ],
              ),
              // Buttons and Icons
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250.0,
                    height: 50.0, // Set button width to 200px
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your login logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Button background color
                        onPrimary: Colors.black, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(32.0), // 80% rounded edges
                        ),
                        padding: EdgeInsets.all(16.0), // Padding
                        elevation: 5.0, // Elevation
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'SF Pro', // Set the SF Pro font
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0), // Add spacing between buttons
                  SizedBox(
                    width: 250.0,
                    height: 50.0, // Set button width to 200px
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your signup logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Button background color
                        onPrimary: Colors.black, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(32.0), // 80% rounded edges
                        ),
                        padding: EdgeInsets.all(16.0), // Padding
                        elevation: 5.0, // Elevation
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'SF Pro', // Set the SF Pro font
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 20.0), // Add spacing between buttons and icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // White background color
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded edges
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              blurRadius: 5.0, // Blur radius
                              offset: Offset(0, 3), // Shadow offset
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.all(6.0), // Padding for the icon button
                        child: IconButton(
                          onPressed: () {
                            // Add your logic for the first icon button
                          },
                          icon: Icon(Icons.lock),
                        ),
                      ),
                      SizedBox(width: 20.0), // Add spacing between icon buttons
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // White background color
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded edges
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              blurRadius: 5.0, // Blur radius
                              offset: Offset(0, 3), // Shadow offset
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.all(6.0), // Padding for the icon button
                        child: IconButton(
                          onPressed: () {
                            // Add your logic for the second icon button
                          },
                          icon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(width: 20.0), // Add spacing between icon buttons
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, // White background color
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded edges
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              blurRadius: 5.0, // Blur radius
                              offset: Offset(0, 3), // Shadow offset
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.all(6.0), // Padding for the icon button
                        child: IconButton(
                          onPressed: () {
                            // Add your logic for the third icon button
                          },
                          icon: Icon(Icons.phone),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
