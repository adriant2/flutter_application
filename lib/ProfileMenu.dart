import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Welcome to Profile Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
