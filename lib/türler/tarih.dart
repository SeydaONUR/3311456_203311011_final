import 'package:son/animeler.dart';
import 'package:son/animelerliste/firefileliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/firefileliste.dart';
import 'package:flutter/material.dart';
class tarih extends StatefulWidget {
  const tarih({Key? key}) : super(key: key);

  @override
  State<tarih> createState() => _tarihState();
}

class _tarihState extends State<tarih> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Tarih animeleri"),
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
      body: firefliesliste(),
    );
  }
}
