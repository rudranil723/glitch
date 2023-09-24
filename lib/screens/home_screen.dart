import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          // Centered Text Widget
          Positioned(
            top: 100, // Adjust the top position as needed
            left: 0,
            right: 75,
            child: Container(
              color: Colors
                  .transparent, // Make the container background transparent
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Center vertically
                  children: <Widget>[
                    Text(
                      'GLITCH',
                      style: TextStyle(
                        fontSize: 62.0, // Font size
                        fontWeight:
                            FontWeight.w800, // Use the default bold font weight
                        color: Color(0xFFFFFFFF), // Text color
                        fontFamily: 'Helvetica',
                        shadows: [
                          Shadow(
                            blurRadius:
                                5.0, // Adjust the blur radius for the shadow
                            color: Colors.black12, // Shadow color
                            offset: Offset(
                                0, 3), // Shadow offset (adjust as needed)
                          ),
                        ], // Specify the Helvetica font
                      ),
                    ),
                    SizedBox(height: 13.0), // Add spacing below "GLITCH" text
                    Container(
                      padding:
                          EdgeInsets.all(10.0), // Add padding for the text box
                      color: Colors
                          .transparent, // Make the container background transparent
                      child: Text(
                        'Develop cognitive abilities while having fun',
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontSize: 24.0, // Font size for the additional text
                          color: Color(0xFFFFFFFF), // Text color
                          fontFamily: 'Helvetica',
                          // You can add shadows or other styles here if needed
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
