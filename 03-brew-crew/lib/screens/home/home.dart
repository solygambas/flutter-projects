import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/services/database.dart';
import 'package:brew_crew/screens/home/brew_list.dart';
import 'package:brew_crew/models/brew.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      initialData: [],
      child: Scaffold(
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
        body: BrewList(),
      ),
    );
  }
}
