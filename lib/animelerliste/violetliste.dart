import 'package:son/animeinfo/erasedinfo.dart';
import 'package:son/animeinfo/erasedinfo.dart';
import 'package:son/animeinfo/violetinfo.dart';
import 'package:flutter/material.dart';

import '../animeinfo/oneinfo.dart';
class violetliste extends StatefulWidget {
  const violetliste({Key? key}) : super(key: key);

  @override
  State<violetliste> createState() => _violetlisteState();
}

class _violetlisteState extends State<violetliste> {
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
                      MaterialPageRoute(builder: (context)=>violetinfo()),
                    );
                  },
                  child: Text("Violet Evergarden",style: TextStyle(fontSize: 20,),))
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/violet.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
