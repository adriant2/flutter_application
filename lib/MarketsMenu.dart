import 'package:flutter/material.dart';

class MarketsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Markets'),
      ),
      body: Center(
        child: Text(
          'Welcome to Markets Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
