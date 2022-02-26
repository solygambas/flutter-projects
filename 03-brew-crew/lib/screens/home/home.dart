import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            TextButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              label: Text('Logout'),
              icon: Icon(Icons.person),
              style: TextButton.styleFrom(primary: Colors.brown[900]),
            ),
          ]),
    );
  }
}
