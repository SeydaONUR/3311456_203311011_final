import 'package:son/turler/fantastik.dart';
import 'package:son/turler/macera.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';

import '../model_service/model_service.dart';
class pokemoninfo extends StatefulWidget {
  const pokemoninfo({Key? key}) : super(key: key);

  @override
  State<pokemoninfo> createState() => _pokemoninfoState();
}

class _pokemoninfoState extends State<pokemoninfo> {
  String time='loading';
  void setupWorldTime() async {
    WorldTime instance=WorldTime(location: 'Istanbul',url:'Europe/Istanbul');
    await instance.getTime();
    setState(() {
      time=instance.time!;
    });
  }
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Pokemon"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
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
        ],
      ),
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left:20,top:20,right: 20,),
              height: 535,
              width: 370,
              decoration: BoxDecoration(
                color: Color(0xFF2a2a2a),
                borderRadius:BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child:Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text( " Konu:Ash Ketchum on ya????na girmi??tir ve en iyi pokemon e??itmeni olmak istemektedir"
                            "Profes??r Oak'tan pokemon almaya ge?? gitmi??ti ve geriye bir tek Pikachu ad??ndaki "
                            "elektrikli fare kalm????t??.Ash bu pokemonu istemese bile almak zorunda kald??."
                            "Pikachu ile birlikte ??ok uzun bir maceraya at??ld?? ve en yak??n iki arkada?? oldular"
                            "Bu yap??mda 2 arkada????n e??siz yolculu??una tan??kl??k ediyoruz.",style: TextStyle(color:Colors.white70),),
                      ),
                    ],
                  ),
                  Row(children: [
                    Text("T??r:",style: TextStyle(color:Colors.white70),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>fantastik()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>fantastik()));
                    },child:Text("Fantastik",style: TextStyle(color: (Colors.white70),)),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>macera()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>macera()));
                    },child:Text("Macera",style: TextStyle(color: (Colors.white70),)),),
                  ],),

                  Row(
                    children: [
                      Text("Yap??m y??l??:1997",style:TextStyle(color:Colors.white70),),
                    ],
                  ),


                  Row(children: [
                    Text("Like",style: TextStyle(color: Colors.white70),),
                    lilebutton(),
                  ],),
                  Row(children: [
                    Text("??stanbul",style:TextStyle(color:Colors.white70),),
                    Text(time,style:TextStyle(color:Colors.white70),),
                  ],),

                  Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      Image.asset('assets/pokemon.jpg'),
                    ],
                  ),

                ],
              ),
            ),
          ),
          /* Container(
            child: Image.asset('images/o.jpg'),
          ),*/
        ],

      ),
    );
  }
}
