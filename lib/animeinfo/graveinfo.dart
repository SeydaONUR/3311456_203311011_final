import 'package:son/studioghibli.dart';
import 'package:son/turler/drama.dart';
import 'package:son/turler/tarih.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/studioghibli.dart';
import 'package:son/turler/drama.dart';
import 'package:son/turler/tarih.dart';
import 'package:son/yonetmenler/takahata.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';

import '../model_service/model_service.dart';
class graveinfo extends StatefulWidget {
  const graveinfo({Key? key}) : super(key: key);

  @override
  State<graveinfo> createState() => _graveinfoState();
}

class _graveinfoState extends State<graveinfo> {
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
        title:Text("Grave of the Fireflies"),
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
              height: 670,
              width: 360,
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
                        child: Text( " Konu:Seita ve Setsuko isimli abi karde?? 2.D??nya sava????nda annelerini kaybederler."
                            "Babalar?? donanmada denizcidir.Bir ba??lar??na kalm????lard??r bu y??zden teyzelerinin yan??na s??????n??rlar."
                            "Ama teyzeleri onlara iyi davranmamaktad??r.??zelliklede b??y??k karde?? olan Seita'ya.Bu y??zden"
                            "abi karde?? evden ayr??lmaya karar verirler ve terk edilmi?? bir s??????na??a yerle??irler"
                            "Bu film abi ile k??????k k??z karde??inin hayatta kalma m??cadelelerini ola??an??st?? bir ??ekilde anlatmaktad??r.",style: TextStyle(color:Colors.white70),),
                      ),
                    ],
                  ),

                  Row(children: [
                    Text("T??r:",style: TextStyle(color: Colors.white70),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>drama()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>drama()));
                    },child:Text("Dram",style: TextStyle(color: (Colors.white70),)),),
                    IconButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tarih()),);}, icon: Icon(Icons.arrow_right,
                      color: Colors.white70,),),
                    TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tarih()),
                    );},child:Text("Tarihi",style: TextStyle(color: Colors.white70,),)),
                  ],),

                  Row(
                    children: [
                      Text("Yap??m y??l??:1988",style: TextStyle(color:Colors.white70,),),
                    ],
                  ),
                  Row(children: [
                    Text("St??dyo:",style: TextStyle(color: Colors.white70,),),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => studioghibli()),
                      );
                    }, child: Text("Studio Ghibli",style: TextStyle(color: Colors.white70),),),

                    Icon(
                      Icons.star,
                      color: Colors.pink,
                      size:20,
                    ),
                  ],),
                  Row(
                    children: [
                      Text("Y??netmen",style: TextStyle(color: Colors.white70),),
                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => takahata()),
                        );
                      }, child: Text("Isao Takahata",style: TextStyle(color: Colors.white70),),),
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
                      Image.asset('assets/graveof.jpg'),
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
