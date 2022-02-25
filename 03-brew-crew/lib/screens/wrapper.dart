import 'package:flutter/material.dart';
import 'package:brew_crew/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authenticate();
  }
}