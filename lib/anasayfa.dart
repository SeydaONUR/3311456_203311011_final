import 'package:son/auth/home_page.dart';
import 'package:son/hakkinda.dart';
import 'package:son/hesap.dart';
import 'package:son/animeler.dart';
import 'package:son/hakkinda.dart';
import 'package:son/hesap.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:son/animeler.dart';
import 'package:rive/rive.dart';


class anasayfa extends StatefulWidget {
  const anasayfa({Key? key}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
/*void initState(){
  super.initState();
  initializeFirebase();
}
Future<void> initializeFirebase() async {
  await Firebase.initializeApp();
  Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context)=>anasayfa()));
}*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Anasayfa"),
        actions: [SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(children: [
            Padding(
              padding: EdgeInsets.only(right: 2,),
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
              padding: EdgeInsets.only(right: 2,),
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
              padding: EdgeInsets.only(right: 2),
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


        Padding(
              padding: EdgeInsets.only(),
              child:Expanded(child:IconButton(
                icon: RiveAnimation.asset('animasyonlar/animasyon.riv'),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => hesap()));
                },
              )

              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xcdcdcd), // Background color
                ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }, child: Text('Profil'))
          ],),
        ),

        ],
      ),
      body: Row(
        children: [
          Text("Şu anda anasayfadasınız"),

        ],
      ),
    );
  }
}






