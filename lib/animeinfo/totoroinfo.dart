import 'package:son/likebutton.dart';
import 'package:son/studioghibli.dart';
import 'package:son/turler/dogaustu.dart';
import 'package:son/turler/macera.dart';
import 'package:son/yonetmenler/miyazaki.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/studioghibli.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';

import '../model_service/model_service.dart';
class totoroinfo extends StatefulWidget {
  const totoroinfo({Key? key}) : super(key: key);

  @override
  State<totoroinfo> createState() => _totoroinfoState();
}

class _totoroinfoState extends State<totoroinfo> {
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
        title:Text("Tonari no Totoro"),
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
                        child: Text( " Konu:??ki k??z karde?? hastanede yatan annelerine daha yak??n olabilmek i??in babalar?? ile birlikte bir k??y evine ta????n??rlar."
                            "Ormanda orman??n ruhu olan Totoro ile kar????la????rlar.Totoro k??????k karde??lerle birlikte ??ok g??zel vakit ge??irir.K??zlar "
                            "Yeni evlerini sevmi??lerdir.Bu eser Miyazaki'nin zengin hayal g??c??n??n bir ??r??n??d??r.",style: TextStyle(color:Colors.white70),),
                      ),
                    ],
                  ),

                  Row(children: [
                    Text("T??r:",style: TextStyle(color: Colors.white70),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>macera()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>macera()));
                    },child:Text("Macera",style: TextStyle(color: (Colors.white70),)),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dogaustu()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dogaustu()));
                    },child:Text("Do??a??st?? G????ler",style: TextStyle(color: (Colors.white70),)),),

                  ],),

                  Row(
                    children: [
                      Text("Yap??m y??l??:1988",style: TextStyle(color: Colors.white70),),
                    ],
                  ),
                  Row(children: [
                    Text("St??dyo:",style: TextStyle(color:Colors.white70),),
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
                      Text("Y??netmen",style: TextStyle(color:Colors.white70),),
                      TextButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => miyazaki()),
                        );
                      }, child: Text("Hayao Miyazaki",style: TextStyle(color: Colors.white70),),),
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
                      Image.asset('assets/totoro.jpg'),
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
