import 'package:flutter/material.dart';

class ShowProfile extends StatelessWidget {
  final String? username;
  final String? email;
  final int? id;

  ShowProfile({Key? key, this.username, this.email, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.account_circle, size: 50),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Ubah warna latar belakang
                  borderRadius: BorderRadius.circular(10), // Tambahkan border radius
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Username: ${username ?? 'null'}', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Ubah warna latar belakang
                  borderRadius: BorderRadius.circular(10), // Tambahkan border radius
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Email: ${email ?? 'null'}', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Ubah warna latar belakang
                  borderRadius: BorderRadius.circular(10), // Tambahkan border radius
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('ID: ${id ?? 'null'}', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
