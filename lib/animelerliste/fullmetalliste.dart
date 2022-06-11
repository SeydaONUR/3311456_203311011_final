import 'package:son/animeinfo/fullmetalinfo.dart';
import 'package:son/animeinfo/fullmetalinfo.dart';
import 'package:flutter/material.dart';
class fullmetalliste extends StatefulWidget {
  const fullmetalliste({Key? key}) : super(key: key);

  @override
  State<fullmetalliste> createState() => _fullmetallisteState();
}

class _fullmetallisteState extends State<fullmetalliste> {
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
                  ),onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>fullmetalinfo()));

              },
                  child: Text("FMA:Brotherhood",style: TextStyle(fontSize: 20,),)),

            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/fullmetal.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
