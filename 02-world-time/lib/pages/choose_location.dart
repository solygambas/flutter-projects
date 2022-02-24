import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

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
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(
        url: 'Europe/Copenhagen', location: 'Copenhagen', flag: 'denmark.png'),
    WorldTime(url: 'Europe/Paris', location: 'Paris', flag: 'france.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'india.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen
    Navigator.pop(context, {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time,
      "isDayTime": instance.isDayTime,
    });
  }

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
        // body: Text('choose location screen'));
        // body: ElevatedButton(onPressed: () {
        //   setState(() {
        //     counter += 1; // only build function is running again
        //   });
        // },
        // child: Text('counter is $counter'),
        //   ),

        // );
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    // print(locations[index].location);
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
