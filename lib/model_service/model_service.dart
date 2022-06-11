import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class WorldTime{
  String ?location;
  String ?time;
  String ?url;
  WorldTime({this.location,this.url});

  Future<void> getTime() async {
    Duration(seconds: 5);
    final response=await http.get(Uri.parse('https://www.worldtimeapi.org/api/timezone/$url'));
    Map data=jsonDecode(response.body);


    String datetime=data['datetime'];
    String offset=data['utc_offset'].substring(1,3);

    DateTime now=DateTime.parse(datetime);
    now=now.add(Duration(hours: int.parse(offset)));
    time=now.toString();
  }
}
