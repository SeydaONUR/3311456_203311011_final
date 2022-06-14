import 'package:son/animeler.dart';
import 'package:son/animeler.dart';
import 'package:flutter/material.dart';
class takahata extends StatelessWidget {
  const takahata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Isao Takahata"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: ElevatedButton(
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
          Container(
            margin: EdgeInsets.only(top:20,left: 20,),
            height: 380,
            width: 370,
            decoration: BoxDecoration(
              color: Color(0xFF2a2a2a),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text("  Hayao Miyazaki ile uzun yıllar birlikte çalıştı.Birlikte Studio Ghibli'yi kurdular."
                          "Her neslin dikkatini çekmeyi başaran gerçek sanat eserleri yarattırlar.Isao Takahata adı "
                          "efsanelerle anılan bir çok animeye imza attı.Bu animeler arasında Heidi,Grave of the Fireflies,Pompoko gibi"
                          " eserler vardır.Kendisi 2018 yılında hayata gözlerini yumdu. ",style: TextStyle(color: Colors.white70),),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top:5),
                      child:
                      Image.asset('images/takahata.jpg'),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
