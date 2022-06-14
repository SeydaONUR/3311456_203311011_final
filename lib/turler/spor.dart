import 'package:son/animeler.dart';
import 'package:son/animeler.dart';
import 'package:flutter/material.dart';
class spor extends StatefulWidget {
  const spor({Key? key}) : super(key: key);

  @override
  State<spor> createState() => _sporState();
}

class _sporState extends State<spor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Spor animeleri"),
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
      body:Row(children:[
        Text("Bu türde anime bulunamadı"),]
      ),
    );
  }
}
