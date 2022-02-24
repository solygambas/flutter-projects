import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // int counter = 0;

  // void getData() async {
  //   // simulate network request for a username
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return 'yoshi';
  //   });
  //   // simulate network request to get bio of the username
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return 'vega, musician & egg collector';
  //   });
  //   // print('would be printed first without async/await');
  //   print('$username - $bio');
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // print('initState function ran');
  //   getData();
  //   print('will be printed first');
  // }

  @override
  Widget build(BuildContext context) {
    // print('build function ran');
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Text('choose location screen'));
    // body: ElevatedButton(onPressed: () {
    //   setState(() {
    //     counter += 1; // only build function is running again
    //   });
    // },
    // child: Text('counter is $counter'),
    //   ),

    // );
  }
}
