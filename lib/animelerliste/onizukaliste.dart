import 'package:son/animeinfo/onizukainfo.dart';
import 'package:son/animeinfo/onizukainfo.dart';
import 'package:flutter/material.dart';

class onizukaliste extends StatefulWidget {
  const onizukaliste({Key? key}) : super(key: key);

  @override
  State<onizukaliste> createState() => _onizukalisteState();
}

class _onizukalisteState extends State<onizukaliste> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 20,
        top: 5,
        left: 10,
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment:MainAxisAlignment.center,
            children: [
              TextButton(style: TextButton.styleFrom(
                primary: Colors.white,
              ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>onizukainfo()),
                    );
                  },
                  child: Text(
                    "Great Teacher Onizuka",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/o.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
