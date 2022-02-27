import 'package:brew_crew/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/shared/constants.dart';
import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/services/database.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // form values
  String _currentName = '';
  String _currentSugars = '';
  int _currentStrength = 100;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user!.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // UserData? userData = snapshot.data;
            // if (userData != null) {
            //     _currentName = userData.name;
            //   _currentStrength = userData.strength;
            //   _currentSugars = userData.sugars;
            // }
            return Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'Update your brew settings.',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Name'),
                    validator: (val) => val!.isEmpty ? 'Enter a Name' : null,
                    onChanged: (val) =>
                        setState(() => _currentName = val.trim()),
                  ),
                  SizedBox(height: 20.0),
                  // dropdown
                  DropdownButtonFormField(
                    decoration: textInputDecoration,
                    value: _currentSugars == '' ? sugars[0] : sugars[0],
                    items: sugars.map((sugar) {
                      return DropdownMenuItem(
                        value: sugar,
                        child: Text("$sugar sugar(s)"),
                      );
                    }).toList(),
                    onChanged: (val) =>
                        setState(() => _currentSugars = val.toString()),
                  ),
                  // slider
                  Slider(
                    value: (_currentStrength).toDouble(),
                    min: 100,
                    max: 900,
                    divisions: 8,
                    activeColor: Colors.brown[_currentStrength],
                    inactiveColor: Colors.brown[_currentStrength],
                    onChanged: (val) =>
                        setState(() => _currentStrength = val.round()),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await DatabaseService(uid: user.uid).updateUserData(
                              _currentSugars, _currentName, _currentStrength);
                          Navigator.pop(context);
                        }
                      },
                      child: Text('Update'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink[400]),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(color: Colors.white)),
                      )),
                ],
              ),
            );
          } else {
            return Loading();
          }
        });
  }
}
