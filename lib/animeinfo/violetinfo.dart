import 'package:son/likebutton.dart';
import 'package:son/studioghibli.dart';
import 'package:son/turler/dogaustu.dart';
import 'package:son/turler/drama.dart';
import 'package:son/turler/macera.dart';
import 'package:son/yonetmenler/miyazaki.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/studioghibli.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';

import '../model_service/model_service.dart';
class violetinfo extends StatefulWidget {
  const violetinfo({Key? key}) : super(key: key);

  @override
  State<violetinfo> createState() => _violetinfoState();
}

class _violetinfoState extends State<violetinfo> {
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
        title:Text("Violet Evergarden"),
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
                        child: Text( " Konu:Violet bir oto an?? bebe??idir.Bu bebekler okuma yazma bilmeyenler i??in mektup yazmaktayd??r."
                            "Lakin sonradan bu bebekler sava?? amac?? ile kullan??lmaya ba??land??.Violet'de bu bebeklerden birisi ve "
                            "Onun sava?? hakk??ndaki duygular?? ??arp??c?? bir ??ekilde anlat??lmaktad??r.",style: TextStyle(color:Colors.white70),),
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
                    },child:Text("Drama",style: TextStyle(color: (Colors.white70),)),),

                  ],),

                  Row(
                    children: [
                      Text("Yap??m y??l??:1988",style: TextStyle(color: Colors.white70),),
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
                      Image.asset('assets/violet.jpg'),
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
