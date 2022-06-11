import 'package:son/Friestore/Firestore.dart';
import 'package:son/anasayfa.dart';
import 'package:son/animeler.dart';
import 'package:son/anasayfa.dart';
import 'package:son/animeler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Sqlite/user_inputs.dart';



class hesap extends StatefulWidget {
  const hesap({Key? key}) : super(key: key);

  @override
  State<hesap> createState() => _hesapState();
}

class _hesapState extends State<hesap> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Hesap"),
        actions: [
          Padding(
            padding: EdgeInsets.only(left:5,),
            child: Expanded(
              child: ElevatedButton(  style: ElevatedButton.styleFrom(
                primary: Color(0xcdcdcd), // Background color
              ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => anasayfa()));
                  },
                  child: Text("Anasayfa")),
            ),
          ),
        ],
      ),
      body: Center(
        child:
        Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(right:90),
                child: ElevatedButton(  style: ElevatedButton.styleFrom(
                  primary: Color(0xcdcdcd), // Background color
                ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Userhome()));
                    }, child: Text("Sqlite")),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>FireStoreApp()));
                }, child: Text("Firestore"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Background color
                ),),


            ],),
          Row(children: [

          ],),
        ],),


      ),
    );
  }
}
