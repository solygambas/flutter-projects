// https://docs.flutter.dev/development/ui/widgets/animation

import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({Key? key}) : super(key: key);

  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedContainer(
          duration: Duration(seconds: 1),
          margin: EdgeInsets.all(_margin),
          width: _width,
          color: _color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => setState(() => _margin = 50), 
                child: Text('Animate margin'),
                ),
              ElevatedButton(
                onPressed: () => setState(() => _color = Colors.purple), 
                child: Text('Animate color'),
                ),
              ElevatedButton(
                onPressed: () => setState(() => _width = 400), 
                child: Text('Animate width'),
                ),
                ElevatedButton(
                onPressed: () => setState(() => _opacity = 0), 
                child: Text('Animate opacity'),
                ),
              AnimatedOpacity(
                opacity: _opacity, 
                duration: Duration(seconds: 2),
                child: Text('Hide me', style: TextStyle(color: Colors.white))
                )
            ],
          ),
    ),);
  }
}
