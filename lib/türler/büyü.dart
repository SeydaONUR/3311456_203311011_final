import 'package:son/animeler.dart';
import 'package:son/animelerliste/fullmetalliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/fullmetalliste.dart';
import 'package:flutter/material.dart';
class buyu extends StatefulWidget {
  const buyu({Key? key}) : super(key: key);

  @override
  State<buyu> createState() => _buyuState();
}

class _buyuState extends State<buyu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Büyü animeleri"),
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
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[fullmetalliste()]),
    );
  }
}
