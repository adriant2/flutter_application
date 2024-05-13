import 'package:flutter/material.dart';

class PerformanceMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Performance'),
      ),
      body: Center(
        child: Text(
          'Welcome to Performance Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
