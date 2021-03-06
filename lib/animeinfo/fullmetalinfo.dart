import 'package:son/turler/buyu.dart';
import 'package:son/turler/drama.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/turler/buyu.dart';
import 'package:son/turler/drama.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/turler/buyu.dart';
import '../model_service/model_service.dart';

class fullmetalinfo extends StatefulWidget {
  const fullmetalinfo({Key? key}) : super(key: key);

  @override
  State<fullmetalinfo> createState() => _fullmetalinfoState();
}

class _fullmetalinfoState extends State<fullmetalinfo> {
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
        title:Text("Fullmetal Alchemist:Brotherhood"),
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
              height: 600,
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
                        child: Text( " Konu:Elric karde??ler ??len annelerini geri getirmek i??in simyaya ba??vurmu??tur."
                            "Bu yap??lmamas?? gereken bir b??y??d??r.Elric karde??ler tabuyu k??rm????t??r.Simyadaki e??it takasa"
                            "kar????l??k olarak k??????k karde??in bedenini kaybeder.Abisi karde??inin ruhunu ba??lamak kar????l??????nda"
                            "bir kolunu ve bir baca????n?? kaybeder.Elric karde??ler kaybettiklerini geri alabilmek i??in uzun ve"
                            "epic bir yolculu??a ????kar.",style: TextStyle(color: Colors.white70),),
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

                    IconButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => buyu()),
                      );
                    }, icon: Icon(Icons.arrow_right,
                      color: Colors.white70,),),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => buyu()),
                      );
                    },child:Text("B??y??",style: TextStyle(color: Colors.white70),)),
                  ],),

                  Row(
                    children: [
                      Text("Yap??m y??l??:2009",style: TextStyle(color:Colors.white70),),
                    ],
                  ),


                  Row(children: [
                    Text("Like",style:TextStyle(color: Colors.white70),),
                    lilebutton(),
                  ],),
                  Row(children: [
                    Text("??stanbul",style:TextStyle(color:Colors.white70),),
                    Text(time,style:TextStyle(color:Colors.white70),),
                  ],),


                  Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      Image.asset('assets/fullmetal.jpg'),
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
