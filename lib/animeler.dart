import 'package:son/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:son/anasayfa.dart';
import 'hakkinda.dart';
import 'package:son/likebutton.dart';
import 'animeliste.dart';

class animeler extends StatefulWidget {
  const animeler({Key? key}) : super(key: key);

  @override
  State<animeler> createState() => _animelerState();
}

class _animelerState extends State<animeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animeler"),
        actions: [
          Padding(
            padding: EdgeInsets.only(left:5,right: 10,),
            child: Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xcdcdcd), // Background color
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => anasayfa()));
                  },
                  child: Text("Anasayfa")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
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
          Padding(
            padding: EdgeInsets.only(right: 60),
            child: Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xcdcdcd), // Background color
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => hakkinda()));
                  },
                  child: Text("Hakkında")),
            ),
          ),
        ],
      ),
      body: animeliste(),

    );
  }
}
