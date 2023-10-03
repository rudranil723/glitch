import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  // Navigate back to the previous screen when the button is pressed
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          // Text (Page Heading)
          Positioned(
            top: 100.0,
            left: 22.0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Let's get started",
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Box with Overlay (Centered)
          Positioned(
            top: 300.0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 300.0,
                height: 370.0,
                decoration: BoxDecoration(
                  color: Colors.white, // Change the background color to white
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10.0,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Content Inside the Box (Form)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            'Create an Account',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Change text color
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                            ),
                            style: TextStyle(
                              color: Colors.black, // Change text color
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email ID',
                            ),
                            style: TextStyle(
                              color: Colors.black, // Change text color
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                            ),
                            style: TextStyle(
                              color: Colors.black, // Change text color
                            ),
                            obscureText: true, // Hide password
                          ),
                          SizedBox(height: 20.0),
                          // Center the Sign Up button and text
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Implement your sign-up logic here
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // Change button color
                                onPrimary: Colors.white, // Change text color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 20.0,
                                  horizontal: 60.0,
                                ),
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 17.0,
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
              ),
            ),
          ),
          // Text and Button in Top Right Corner (Already have an account?)
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Row(
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0), // Add spacing
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the login page when the "Log In" button is pressed
                    Navigator.of(context).pop();
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
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 14.0,
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
