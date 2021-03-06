import 'package:son/turler/dogaustu.dart';
import 'package:son/turler/gizem.dart';
import 'package:son/turler/psikoloji.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';
import 'package:son/turler/dogaustu.dart';
import 'package:son/turler/gizem.dart';
import 'package:son/turler/psikoloji.dart';
import 'package:flutter/material.dart';
import 'package:son/animeler.dart';
import 'package:son/likebutton.dart';

import '../model_service/model_service.dart';

class erasedinfo extends StatefulWidget {
  const erasedinfo({Key? key}) : super(key: key);

  @override
  State<erasedinfo> createState() => _erasedinfoState();
}

class _erasedinfoState extends State<erasedinfo> {
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
        title: Text("Erased"),
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
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
                right: 20,
              ),
              height: 670,
              width: 360,
              decoration: BoxDecoration(
                color: Color(0xFF2a2a2a),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          " Konu:Satoru Fujinuma'n??n ??l??m ve kazalar?? engelemmek i??in bir g??c?? vard??r."
                              "Bu g???? sayesinde k??t?? bir olay ger??ekle??meden fark??na varmaktad??r ve zamanda geriye gitmektedir."
                              "Fujinuma i??lemedi??i bir cinayetle su??lanmaktad??r ve tekrar zamanda geriye gider ama bu sefer ilkokula."
                              "??lkokulda s??n??f arkada???? Kayo ka????r??lm????t??r ve bu sefer Fujinuma bunu de??i??tirmek i??in elinden geleni yapacakt??r.",style: TextStyle(color: Colors.white70),),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>psikoloji()));
                        }, icon: Icon(Icons.arrow_right,
                        color: (Colors.white70),),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>psikoloji()));
                      },child:Text("Psikoloji",style: TextStyle(color: (Colors.white70),)),),

                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>dogaustu()));
                        }, icon: Icon(Icons.arrow_right,
                        color: (Colors.white70),),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>dogaustu()));
                      },child:Text("Do??a??st?? G????ler",style: TextStyle(color: (Colors.white70),)),),
                      //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right,
                      //color: Colors.black,),),
                      //Text("Komedi"),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>gizem()));
                        }, icon: Icon(Icons.arrow_right,
                        color: (Colors.white70),),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>gizem()));
                      },child:Text("Gizem",style: TextStyle(color: (Colors.white70),)),),
                    ],),
                  Row(
                    children: [
                      Text("Yap??m y??l??:2016",style: TextStyle(color: Colors.white70),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Like",style: TextStyle(color: Colors.white70),),
                      lilebutton(),
                    ],
                  ),
                  Row(children: [
                    Text("??stanbul",style:TextStyle(color:Colors.white70),),
                    Text(time,style:TextStyle(color:Colors.white70),),
                  ],),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      Image.asset('assets/erased.jpg'),
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
