import 'package:flutter/material.dart';
import 'package:flutter_application_1/welcome_screen.dart';
import 'tradeMenu.dart'; // Import trade menu
import 'marketsmenu.dart'; // Import markets menu
import 'performanceMenu.dart'; // Import performance menu
import 'profileMenu.dart'; // Import profile menu
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navigate to the appropriate screen when BottomNavigationBar icon is tapped
    switch (_selectedIndex) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TradeMenu()), // Navigate to trade menu
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MarketsMenu()), // Navigate to markets menu
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PerformanceMenu()), // Navigate to performance menu
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileMenu()), // Navigate to profile menu
        );
        break;
    }
  }

  void _logout() {
    // Navigate back to login screen and remove all previous routes from stack
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button next to Accounts text
        title: Text(
          'Accounts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.notifications), // Change icon to alarm and bell
              onPressed: () {
                // Add action for alarm and bell icon button here
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.logout), // Add logout button
            onPressed: _logout,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30), // Set horizontal padding
            decoration: BoxDecoration(
              color: Colors.grey[200], // Change background color
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      '#1234567890',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1),
                Divider(),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Real  MT5  Standard',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  '50.10 USD',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildMenuButton(Icons.add_circle, 'Deposit', Colors.green),
                    _buildMenuButton(Icons.remove_circle, 'Withdraw', Colors.red),
                    _buildMenuButton(Icons.history, 'History', Colors.blue),
                    _buildMenuButton(Icons.details, 'Details', Colors.orange),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0), // Selected icon and text color
        unselectedItemColor: Colors.grey, // Unselected icon and text color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard), // Change icon to squares
            label: 'Accounts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.candlestick_chart_rounded), // Change icon to candlestick
            label: 'Trade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public), // Change icon to globe with lines
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Performance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String label, Color iconColor) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: iconColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
