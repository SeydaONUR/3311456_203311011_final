import 'package:son/animeler.dart';
import 'package:son/animelerliste/erasedliste.dart';
import 'package:son/animelerliste/oneliste.dart';
import 'package:son/animelerliste/totoroliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/erasedliste.dart';
import 'package:son/animelerliste/totoroliste.dart';
import 'package:flutter/material.dart';
class dogaustu extends StatefulWidget {
  const dogaustu({Key? key}) : super(key: key);

  @override
  State<dogaustu> createState() => _dogaustuState();
}

class _dogaustuState extends State<dogaustu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Doğa üstü güç animeleri"),
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
              erasedliste(),
              oneliste(),
            ],
          ),
        ),
      ),
    );
  }
}
