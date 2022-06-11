import 'package:son/anasayfa.dart';
import 'package:son/animation&chart/chart.dart';
import 'package:son/animeler.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:son/anasayfa.dart';


class hakkinda extends StatefulWidget {
  const hakkinda({Key? key}) : super(key: key);

  @override
  State<hakkinda> createState() => _hakkindaState();
}

class _hakkindaState extends State<hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkında"),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              left: 5,
            ),
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
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xcdcdcd), // Background color
                  ),onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => grafik()),
                );
              }, child: Text("Uygulamımızın aylara göre kullanıcı sayısı")),

            ],),
        ],
      ),
    );
  }
}
