import 'package:flutter/material.dart';
import 'package:glitch/screens/signin_screen.dart';
import 'package:glitch/screens/mainscreen.dart'; // Import MainScreen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image (Same as HomeScreen)
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Return Button (Top Left)
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.all(5.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Navigate back to the home screen when the button is pressed
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          // Login Text (Top Right)
          Positioned(
            top: 80.0,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN', // Updated to uppercase
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 64.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0), // Add spacing
                  Text(
                    'Welcome Back, User',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Rounded Box with Form (Centered)
          Positioned(
            top: screenHeight * 0.4, // Adjust the top value as needed
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 300.0,
                height: 370.0,
                padding: EdgeInsets.all(20.0),
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
                child: Column(
                  children: [
                    Text(
                      'Get Started Free',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0), // Add spacing
                    // Email/Username Input
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email or Username',
                      ),
                    ),
                    SizedBox(height: 20.0), // Add spacing
                    // Password Input
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                      obscureText: true, // Hide password
                    ),
                    SizedBox(height: 20.0), // Add spacing
                    // Login Button (Same style as HomeScreen)
                    SizedBox(
                      width: 250.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to MainScreen when the "Log In" button is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                          elevation: 5.0,
                          shadowColor: Colors.black.withOpacity(0.3),
                        ),
                        child: Text(
                          'LOG IN',
                          style: TextStyle(
                            fontSize: 19.0,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0), // Add spacing
                    // Three Icons (Same as HomeScreen)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                          padding: EdgeInsets.all(6.0),
                          child: IconButton(
                            onPressed: () {
                              // Add your logic for the first icon button
                            },
                            icon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Container(
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
                          padding: EdgeInsets.all(6.0),
                          child: IconButton(
                            onPressed: () {
                              // Add your logic for the second icon button
                            },
                            icon: Icon(Icons.email),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Container(
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
                          padding: EdgeInsets.all(6.0),
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
          ),
          // Text and Button in Top Right Corner
          Positioned(
            top: 10.0, // Adjust the top value as needed
            right: 10.0, // Adjust the right value as needed
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0), // Add spacing
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the sign-up screen when the "Sign Up" button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
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
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontFamily: 'SF Pro',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
