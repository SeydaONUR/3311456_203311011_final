import 'package:son/animeler.dart';
import 'package:son/animeler.dart';
import 'package:flutter/material.dart';
class miyazaki extends StatelessWidget {
  const miyazaki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcdcdcd),
      appBar: AppBar(
        title:Text("Hayao Miyazaki"),
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
            margin: EdgeInsets.only(top:20,left:10),
            height: 420,
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
                      child: Text(" Hayao Miyazaki bir sürü kült animeye imza atmıştır.Kendisine Uzak Doğu'nun Walt Disney'i olarak anılır "
                          "ama kendisine böyle hitap edilmesini sevmemektedir.Çok derin bir hayalgücü vardır.Animelerini her yaştan insan "
                          "içindir.Animelerinde vermek istediği mesajları gizli bir şekilde vermeyi sever.80 yaşına gelmesine ve ellerinin titrediğini"
                          " söylemesine rağmen hala film yapmakla uğraşmaktadır.En başarılı filmleri arasında Tonari no Totoro,Spirted Away,Howl's Moving Castle vardır.",style: TextStyle(color:Colors.white70),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset('images/miyazaki.jpg'),
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
