import 'package:son/t%C3%BCrler/fantastik.dart';
import 'package:son/t%C3%BCrler/komedi.dart';
import 'package:son/t%C3%BCrler/macera.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/t%C3%BCrler/fantastik.dart';
import 'package:son/t%C3%BCrler/macera.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';

import '../model_service/model_service.dart';
import '../türler/doğaüstü.dart';
class oneinfo extends StatefulWidget {
  const oneinfo({Key? key}) : super(key: key);

  @override
  State<oneinfo> createState() => _oneinfoState();
}

class _oneinfoState extends State<oneinfo> {
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
        title:Text("One Punch Man"),
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
                        child: Text( " Konu:Saitama nasıl olduğunu bilmeden özel güçler elde etti."
                            "Bu güç bütün düşmanlarını tek yumrukta ortadan kaldırma. "
                            "Bu animede Saitama'nın kendine denk rakip araması komil bir şekilde anlatılıyor."
                          ,style: TextStyle(color:Colors.white70),),
                      ),
                    ],
                  ),
                  Row(children: [
                    Text("Tür:",style: TextStyle(color:Colors.white70),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dogaustu()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>dogaustu()));
                    },child:Text("Doğaüstü",style: TextStyle(color: (Colors.white70),)),),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>komedi()));
                      }, icon: Icon(Icons.arrow_right,
                      color: (Colors.white70),),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>komedi()));
                    },child:Text("Komedi",style: TextStyle(color: (Colors.white70),)),),
                  ],),

                  Row(
                    children: [
                      Text("Yapım yılı:2015",style:TextStyle(color:Colors.white70),),
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
                      Image.asset('assets/saitama.jpg'),
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
