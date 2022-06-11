import 'package:son/animeler.dart';
import 'package:son/animelerliste/erasedliste.dart';
import 'package:son/animelerliste/fullmetalliste.dart';
import 'package:son/animelerliste/oneliste.dart';
import 'package:son/animelerliste/violetliste.dart';
import 'package:son/likebutton.dart';
import 'package:son/t%C3%BCrler/b%C3%BCy%C3%BC.dart';
import 'package:son/t%C3%BCrler/do%C4%9Fa%C3%BCst%C3%BC.dart';
import 'package:son/t%C3%BCrler/drama.dart';
import 'package:son/t%C3%BCrler/fantastik.dart';
import 'package:son/t%C3%BCrler/gizem.dart';
import 'package:son/t%C3%BCrler/komedi.dart';
import 'package:son/t%C3%BCrler/macera.dart';
import 'package:son/t%C3%BCrler/okul.dart';
import 'package:son/t%C3%BCrler/psikoloji.dart';
import 'package:son/t%C3%BCrler/spor.dart';
import 'package:son/t%C3%BCrler/tarih.dart';
import 'package:son/animelerliste/erasedliste.dart';
import 'package:son/animelerliste/firefileliste.dart';
import 'package:son/animelerliste/fullmetalliste.dart';
import 'package:son/t%C3%BCrler/b%C3%BCy%C3%BC.dart';
import 'package:son/t%C3%BCrler/do%C4%9Fa%C3%BCst%C3%BC.dart';
import 'package:son/t%C3%BCrler/drama.dart';
//import 'package:son/fantastik.dart';
import 'package:son/t%C3%BCrler/gizem.dart';
import 'package:son/t%C3%BCrler/komedi.dart';
import 'package:son/t%C3%BCrler/macera.dart';
import 'package:son/t%C3%BCrler/okul.dart';
import 'package:son/t%C3%BCrler/psikoloji.dart';
import 'package:son/t%C3%BCrler/spor.dart';
import 'package:son/t%C3%BCrler/tarih.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'animelerliste/onizukaliste.dart';
import 'animelerliste/firefileliste.dart';
import 'animelerliste/totoroliste.dart';
import 'animelerliste/pokemonliste.dart';
class animeliste extends StatefulWidget {
  const animeliste({Key? key}) : super(key: key);

  @override
  State<animeliste> createState() => _animelisteState();
}

class _animelisteState extends State<animeliste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Container(
              width: 1520,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF2a2a2a),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 50, right: 10),
                      child: Text("Türler:",style:TextStyle(color:Colors.white70),),),
                    Padding(
                      padding: EdgeInsets.only(left: 1, top: 20),
                      child: GestureDetector(
                        child:Text("Komedi",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => komedi()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 20,right:10),
                      child: GestureDetector(
                        child:Text("Macera",style:TextStyle(color:Colors.white70),),
                        onDoubleTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => macera()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child:  GestureDetector(
                        child:Text("Tarihi",style:TextStyle(color:Colors.white70),),
                        onLongPress: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => tarih()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child:  GestureDetector(
                        child:Text("Drama",style:TextStyle(color:Colors.white70),),
                        onLongPressCancel: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => drama()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 20.0,right:10),
                      child: GestureDetector(
                        child:Text("Fantastik",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => fantastik()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 20.0,right:10),
                      child: GestureDetector(
                        child:Text("Doğaüstü Güçler",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => dogaustu()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child: GestureDetector(
                        child:Text("Okul",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => okul()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child:  GestureDetector(
                        child:Text("Psikoloji",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => psikoloji()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child: GestureDetector(
                        child:Text("Gizem",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => gizem()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child: GestureDetector(
                        child:Text("Büyü",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => buyu()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 5,right:10),
                      child: GestureDetector(
                        child:Text("Spor",style:TextStyle(color:Colors.white70),),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => spor()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  onizukaliste(),
                  firefliesliste(),
                  erasedliste(),
                  totoroliste(),
                  pokemonliste(),
                  fullmetalliste(),
                  oneliste(),
                  violetliste(),

                ],
              ),
            ),
          ),



        ],
      ),
    );
  }
}
