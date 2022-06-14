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
                        child: Text( " Konu:Elric kardeşler ölen annelerini geri getirmek için simyaya başvurmuştur."
                            "Bu yapılmaması gereken bir büyüdür.Elric kardeşler tabuyu kırmıştır.Simyadaki eşit takasa"
                            "karşılık olarak küçük kardeşin bedenini kaybeder.Abisi kardeşinin ruhunu bağlamak karşılığında"
                            "bir kolunu ve bir bacağını kaybeder.Elric kardeşler kaybettiklerini geri alabilmek için uzun ve"
                            "epic bir yolculuğa çıkar.",style: TextStyle(color: Colors.white70),),
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
                    },child:Text("Büyü",style: TextStyle(color: Colors.white70),)),
                  ],),

                  Row(
                    children: [
                      Text("Yapım yılı:2009",style: TextStyle(color:Colors.white70),),
                    ],
                  ),


                  Row(children: [
                    Text("Like",style:TextStyle(color: Colors.white70),),
                    lilebutton(),
                  ],),
                  Row(children: [
                    Text("İstanbul",style:TextStyle(color:Colors.white70),),
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
