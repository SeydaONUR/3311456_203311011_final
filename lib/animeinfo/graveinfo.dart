import 'package:son/studioghibli.dart';
import 'package:son/t%C3%BCrler/drama.dart';
import 'package:son/t%C3%BCrler/tarih.dart';
import 'package:son/y%C3%B6netmenler/takahata.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/studioghibli.dart';
import 'package:son/t%C3%BCrler/drama.dart';
import 'package:son/t%C3%BCrler/tarih.dart';
import 'package:son/y%C3%B6netmenler/takahata.dart';
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
                        child: Text( " Konu:Seita ve Setsuko isimli abi kardeş 2.Dünya savaşında annelerini kaybederler."
                            "Babaları donanmada denizcidir.Bir başlarına kalmışlardır bu yüzden teyzelerinin yanına sığınırlar."
                            "Ama teyzeleri onlara iyi davranmamaktadır.Özelliklede büyük kardeş olan Seita'ya.Bu yüzden"
                            "abi kardeş evden ayrılmaya karar verirler ve terk edilmiş bir sığınağa yerleşirler"
                            "Bu film abi ile küçük kız kardeşinin hayatta kalma mücadelelerini olağanüstü bir şekilde anlatmaktadır.",style: TextStyle(color:Colors.white70),),
                      ),
                    ],
                  ),

                  Row(children: [
                    Text("Tür:",style: TextStyle(color: Colors.white70),),
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
                      Text("Yapım yılı:1988",style: TextStyle(color:Colors.white70,),),
                    ],
                  ),
                  Row(children: [
                    Text("Stüdyo:",style: TextStyle(color: Colors.white70,),),
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
                      Text("Yönetmen",style: TextStyle(color: Colors.white70),),
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
                    Text("İstanbul",style:TextStyle(color:Colors.white70),),
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
