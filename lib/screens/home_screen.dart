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
                color: Color.fromARGB(255, 252, 246, 246), // White background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0), // Rounded top-left corner
                  topRight: Radius.circular(50.0), // Rounded top-right corner
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Shadow color
                    blurRadius: 50.0, // Blur radius
                    offset: Offset(0, 5), // Shadow offset
                  ),
                ],
              ),
              // You can add child widgets inside this container if needed
            ),
          ),
        ],
      ),
    );
  }
}
