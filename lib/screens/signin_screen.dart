import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add sign-up form fields and submit button here
            Text(
              'Sign Up Page',
              style: TextStyle(fontSize: 24.0),
            ),
            // Add sign-up form fields and submit button here
          ],
        ),
      ),
    );
  }
}
