import 'package:son/animeler.dart';
import 'package:son/animelerliste/firefileliste.dart';
import 'package:son/animelerliste/fullmetalliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/firefileliste.dart';
import 'package:son/animelerliste/fullmetalliste.dart';
import 'package:son/animelerliste/violetliste.dart';
import 'package:flutter/material.dart';
class drama extends StatefulWidget {
  const drama({Key? key}) : super(key: key);

  @override
  State<drama> createState() => _dramaState();
}

class _dramaState extends State<drama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Dram animeleri"),
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              fullmetalliste(),
              firefliesliste(),
              violetliste(),
            ],
          ),
        ),
      ),
    );
  }
}
