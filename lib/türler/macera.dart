import 'package:son/animeler.dart';
import 'package:son/animelerliste/pokemonliste.dart';
import 'package:son/animelerliste/totoroliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/pokemonliste.dart';
import 'package:son/animelerliste/totoroliste.dart';
import 'package:flutter/material.dart';
class macera extends StatefulWidget {
  const macera({Key? key}) : super(key: key);

  @override
  State<macera> createState() => _maceraState();
}

class _maceraState extends State<macera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Macera animeleri"),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              totoroliste(),
              pokemonliste(),
            ],
          ),
        ),
      ),
    );
  }
}
