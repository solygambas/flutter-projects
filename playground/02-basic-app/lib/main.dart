import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          // fonts
          // child: Text('Hello ninjas', style: TextStyle(
          //   fontSize: 20.0,
          //   fontWeight: FontWeight.bold,
          //   letterSpacing: 2.0,
          //   color: Colors.grey[600],
          //   fontFamily: 'IndieFlower',
          // )),

          // images
          // child: Image(
          //   image: NetworkImage('https://images.unsplash.com/photo-1645466525466-647ef246067f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
          // ),
          // child: Image.network('https://images.unsplash.com/photo-1645466525466-647ef246067f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          // child: Image(
          //   image: AssetImage('assets/breakfast2.jpg')
          // ),
          // child: Image.asset('assets/breakfast3.jpg'),

          // icons
          // child: Icon(
          //   Icons.airport_shuttle,
          //   color: Colors.lightBlue,
          //   size: 50.0,
          //   )

          // buttons
          // child: TextButton(),
          // child: ElevatedButton(
          // child: Text('Click me'),
          // ),
      //     child: ElevatedButton.icon(
      //   onPressed: () {
      //     print('you clicked me');
      //   },
      //   label: Text('Email me'),
      //   icon: Icon(Icons.mail),
      //   style: ElevatedButton.styleFrom(primary: Colors.black),
      // ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.alternate_email),
        color: Colors.amber,
      )),
      floatingActionButton: FloatingActionButton(
        child: const Text('Click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
