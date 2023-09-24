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
          // Centered Text Widget with ShaderMask
          Positioned(
            top: 100, // Adjust the top position as needed
            left: 0,
            right: 75,
            child: Container(
              color: Colors
                  .transparent, // Make the container background transparent
              child: Center(
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      colors: [
                        Color(0xFF00FF00),
                        Color(0xFFFF0000),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(rect);
                  },
                  child: Text(
                    'GLITCH',
                    style: TextStyle(
                      fontSize: 62.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 232, 224,
                          224), // Text color (will be masked by gradient)
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
