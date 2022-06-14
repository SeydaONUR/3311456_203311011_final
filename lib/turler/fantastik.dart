import 'package:son/animeler.dart';
import 'package:son/animelerliste/pokemonliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/pokemonliste.dart';
import 'package:flutter/material.dart';
class fantastik extends StatefulWidget {
  const fantastik({Key? key}) : super(key: key);

  @override
  State<fantastik> createState() => _fantastikState();
}

class _fantastikState extends State<fantastik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Fantastik animeleri"),
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
      body: pokemonliste(),
    );
  }
}
