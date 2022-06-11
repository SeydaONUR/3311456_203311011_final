import 'package:son/animeinfo/erasedinfo.dart';
import 'package:son/animeinfo/erasedinfo.dart';
import 'package:flutter/material.dart';
class erasedliste extends StatefulWidget {
  const erasedliste({Key? key}) : super(key: key);

  @override
  State<erasedliste> createState() => _erasedlisteState();
}

class _erasedlisteState extends State<erasedliste> {
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
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>erasedinfo()),
                    );
                  },
                  child: Text("Erased",style: TextStyle(fontSize: 20,),))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/erased.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
