import 'package:son/animeler.dart';
import 'package:son/animeinfo/onizukainfo.dart';
import 'package:son/animeler.dart';
import 'package:flutter/material.dart';
import 'package:son/animeinfo/onizukainfo.dart';
class okul extends StatefulWidget {
  const okul({Key? key}) : super(key: key);

  @override
  State<okul> createState() => _okulState();
}

class _okulState extends State<okul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Okul animeleri"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              primary: Color(0xcdcdcd), // Background color
            ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => animeler()),
                  );
                },
                child: Text("Animeler")),
          ),
        ],
      ),
      body:Container(
        padding: EdgeInsets.only(
          right: 20,
          top: 5,
          left: 10,
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>onizukainfo()),
                      );
                    },
                    child: Text(
                      "Great Teacher Onizuka",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/o.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
