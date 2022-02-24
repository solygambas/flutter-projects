import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.http('worldtimeapi.org', '/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      // print(datetime);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      // print(now);
      time = now.toString();
    } catch (e) {
      print('caught error: $e');
      time = 'Could not get time data';
    }
  }
}
