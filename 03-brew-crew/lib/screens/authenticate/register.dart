import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({required this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  // state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
            backgroundColor: Colors.brown[400],
            elevation: 0.0,
            title: Text('Sign up to Brew Crew'),
            actions: <Widget>[
              TextButton.icon(
                onPressed: () => widget.toggleView(), // this.toggleView()
                label: Text('Sign In'),
                icon: Icon(Icons.person),
                style: TextButton.styleFrom(primary: Colors.brown[900]),
              ),
            ]),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
                child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(onChanged: (val) {
                  setState(() {
                    email = val.trim();
                  });
                }),
                SizedBox(height: 20.0),
                TextFormField(
                    obscureText: true,
                    onChanged: (val) {
                      setState(() {
                        password = val.trim();
                      });
                    }),
                SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () async {
                      print(email);
                      print(password);
                    },
                    child: Text('Sign Up'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pink[400]),
                      textStyle: MaterialStateProperty.all(
                          TextStyle(color: Colors.white)),
                    ))
              ],
            ))));
  }
}
