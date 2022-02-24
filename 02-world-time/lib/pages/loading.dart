import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

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

  void getTime() async {
    Response response =
        await get(Uri.http('worldtimeapi.org', '/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    // print(datetime);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    print(now);
  }

  @override
  void initState() {
    super.initState();
    // getData();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
