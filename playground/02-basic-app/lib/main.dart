import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
appBar: AppBar(
  title: const Text('My first app'),
  centerTitle: true,
),
body: const Center(
  child: Text('Hello ninjas'),
),
floatingActionButton: FloatingActionButton(
  child: const Text('Click'),
  onPressed: (){},
),
    ),
    ),
  );
}
