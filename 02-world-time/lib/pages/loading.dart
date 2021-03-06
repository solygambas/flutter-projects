import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   Response response =
  //       await get(Uri.http('jsonplaceholder.typicode.com', '/todos/1'));
  //   Map data = jsonDecode(response.body);
  //   print(
  //       data); // {userId: 1, id: 1, title: delectus aut autem, completed: false}
  //   print(data['title']); // delectus aut autem
  // }

  // String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Paris', flag: 'france.png', url: 'Europe/Paris');
    await instance.getTime();
    // print(instance.time);
    // setState(() {
    //   time = instance.time;
    // });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDayTime": instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    // getData();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: EdgeInsets.all(50.0),
      //   // child: Text(time),
      //   child: Text('loading'),
      // ),
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
  color: Colors.white,
  size: 50.0,
),
      )
    );
  }
}
