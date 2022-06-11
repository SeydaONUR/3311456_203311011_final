import 'package:son/animeinfo/graveinfo.dart';
import 'package:flutter/material.dart';
import 'package:son/animeinfo/graveinfo.dart';
class firefliesliste extends StatefulWidget {
  const firefliesliste({Key? key}) : super(key: key);

  @override
  State<firefliesliste> createState() => _fireflieslisteState();
}

class _fireflieslisteState extends State<firefliesliste> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 10,
        top: 5,
        left: 10,
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(style: TextButton.styleFrom(
                primary: Colors.white,
              ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>graveinfo()),
                  );
                },
                child: Text(
                  "Grave of the Fireflies",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/graveof.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
