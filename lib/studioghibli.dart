import 'package:son/animeler.dart';
import 'package:son/animeler.dart';
import 'package:flutter/material.dart';
class studioghibli extends StatelessWidget {
  const studioghibli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Studio Ghibli"),
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
          Expanded(
            child: Padding(padding: EdgeInsets.all(15.0),
              child: Text("Studio Ghibli dünyanın en meşhur anime stüdyosudur.Stüdyonun kurucuları "
                  "ünlü yönetmen Hayao Miyazaki ve Isao Takahatadır.Bu zamana kadar bir çok "
                  "ölümsüz eser vermişlerdir.Japonya'da müzesi vardır ve tema parkıda yapılmaktadır."),
            ),
          ),
        ],
      ),
    );
  }
}
