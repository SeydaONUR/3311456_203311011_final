import 'package:son/likebutton.dart';
import 'package:son/turler/komedi.dart';
import 'package:son/turler/okul.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:flutter/rendering.dart';

import '../model_service/model_service.dart';
class onizukainfo extends StatefulWidget {
  const onizukainfo({Key? key}) : super(key: key);

  @override
  State<onizukainfo> createState() => _onizukainfoState();
}

class _onizukainfoState extends State<onizukainfo> {
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
        title:Text("Great Teacher Onizuka"),
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
      body:
      Row(
        children: [
          SingleChildScrollView(
            child: Container(

              margin: EdgeInsets.only(left:20,top:20,right: 20,),
              height: 550,
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
                        child: Text( " Konu:Eikichi Onizuka eski bir motosiklet çetesi üyesidir Onizakanın "
                            "en büyük amacı öğretmen olmaktır.Bunun sebebi yaşlansa bile genç kızlarla birlikte"
                            " olmaktır.Ama Onizukaya okulun en yaramaz sınıfını verirler ve Onizuka en iyi öğretmen"
                            " olduğunu kanıtlamak için bu sınıfı adam etmektir.  ",style:TextStyle(color: Colors.white70),),
                      ),
                    ],
                  ),
                  Row(children: [
                    Text("Tür:",style:TextStyle(color: Colors.white70),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>komedi()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>komedi()));
                    },child:Text("Komedi",style: TextStyle(color: (Colors.white70),)),),
                    //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,
                    //color: Colors.black,),),
                    //Text("Komedi"),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>okul()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>okul()));
                    },child:Text("Okul",style: TextStyle(color: (Colors.white70),)),),
                  ],),

                  Row(
                    children: [
                      Text("Yapım yılı:1999",style: TextStyle(color: Colors.white70),),
                    ],
                  ),
                  Row(children: [
                    Text("Like",style: TextStyle(color: Colors.white70),),
                    lilebutton(),
                  ],),
                  Row(children: [
                    Text("İstanbul",style:TextStyle(color:Colors.white70),),
                    Text(time,style:TextStyle(color:Colors.white70),),
                  ],),
                  Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      Image.asset('assets/o.jpg'),
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
