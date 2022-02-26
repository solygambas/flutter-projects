import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          title: Text('Sign in to Brew Crew'),
          actions: <Widget>[
            TextButton.icon(
              onPressed: () => widget.toggleView(),
              label: Text('Register'),
              icon: Icon(Icons.person),
              style: TextButton.styleFrom(primary: Colors.brown[900]),
            ),
          ]
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            // child: ElevatedButton(
            //   child: Text('Sign in Anon'),
            //   style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all(Colors.brown[900]),
            //   ),
            //   onPressed: () async {
            //     dynamic result = await _auth.signInAnon();
            //     if (result == null) {
            //       print('error signing in');
            //     } else {
            //       print('signed in');
            //       print(result.uid);
            //     }
            //   },
            // ),
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
                    child: Text('Sign In'),
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
