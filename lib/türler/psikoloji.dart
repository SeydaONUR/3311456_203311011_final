import 'package:son/animeinfo/erasedinfo.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/erasedliste.dart';
import 'package:son/animeler.dart';
import 'package:son/animelerliste/erasedliste.dart';
import 'package:flutter/material.dart';
class psikoloji extends StatefulWidget {
  const psikoloji({Key? key}) : super(key: key);

  @override
  State<psikoloji> createState() => _psikolojiState();
}

class _psikolojiState extends State<psikoloji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Psikoloji animeleri"),
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
      body:erasedliste(),
    );
  }
}
