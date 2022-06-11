import 'package:son/animeinfo/totoroinfo.dart';
import 'package:son/animeinfo/totoroinfo.dart';
import 'package:flutter/material.dart';
class totoroliste extends StatefulWidget {
  const totoroliste({Key? key}) : super(key: key);

  @override
  State<totoroliste> createState() => _totorolisteState();
}

class _totorolisteState extends State<totoroliste> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20,
        top: 5,
        left: 10,),
      child:Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(style: TextButton.styleFrom(
                primary: Colors.white,
              ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>totoroinfo()),
                    );
                  },
                  child: Text("Tonari no Totoro",style: TextStyle(fontSize: 20,),))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/totoro.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
