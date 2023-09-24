import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add login form fields and submit button here
            Text(
              'Login Page',
              style: TextStyle(fontSize: 24.0),
            ),
            // Add login form fields and submit button here
          ],
        ),
      ),
    );
  }
}
