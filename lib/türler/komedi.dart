import 'package:son/animeinfo/onizukainfo.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/oneliste.dart';
import 'package:son/animelerliste/onizukaliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/onizukaliste.dart';
import 'package:flutter/material.dart';

class komedi extends StatefulWidget {
  const komedi({Key? key}) : super(key: key);

  @override
  State<komedi> createState() => _komediState();
}

class _komediState extends State<komedi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Komedi animeleri"),
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
      body:SingleChildScrollView(
        child: Column(children: [
          onizukaliste(),
          oneliste(),
        ],),
      ),

    );
  }
}
