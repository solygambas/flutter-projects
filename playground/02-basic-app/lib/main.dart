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
      // body: Center(
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
      // child: IconButton(
      //   onPressed: () {},
      //   icon: Icon(Icons.alternate_email),
      //   color: Colors.amber,
      // )),

      // containers & padding
      // body: Container(
      //   // padding: EdgeInsets.all(20.0),
      //   // padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      //   padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   margin: const EdgeInsets.all(30.0),
      //   color: Colors.grey[400],
      //   child: const Text('hello'),
      //   ),
      // body: const Padding(
      //   padding: EdgeInsets.all(20.0),
      //   child: Text('hello'),
      // ),

      // rows
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //   const Text('hello, world'),
      //   TextButton(
      //     child: const Text('Click me'), 
      //     onPressed: () {}, 
      //    style: TextButton.styleFrom(primary: Colors.amber),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: const EdgeInsets.all(30.0),
      //       child: const Text('Inside container'),
      //     )
      // ],),

      // columns
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //   Row(
      //     children: <Widget>[
      //       Text('Hello,'),
      //       Text(' world'),
      //     ],
      //   ),
      //   Container(
      //     padding: const EdgeInsets.all(20.0),
      //     color: Colors.cyan,
      //     child: const Text('One'),
      //   ),
      //   Container(
      //     padding: const EdgeInsets.all(30.0),
      //     color: Colors.pinkAccent,
      //     child: const Text('Two'),
      //   ),
      //   Container(
      //     padding: const EdgeInsets.all(40.0),
      //     color: Colors.amber,
      //     child: const Text('Three'),
      //   ),
      // ],),

      // expanded widgets
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset('assets/breakfast1.jpg')
            ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('Click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
