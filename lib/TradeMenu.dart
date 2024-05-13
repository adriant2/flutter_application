import 'package:flutter/material.dart';

class TradeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trade'),
      ),
      body: Center(
        child: Text(
          'Welcome to Trade Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
