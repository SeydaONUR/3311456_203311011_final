import 'package:son/animeinfo/pokemoninfo.dart';
import 'package:son/animeinfo/pokemoninfo.dart';
import 'package:flutter/material.dart';

class pokemonliste extends StatefulWidget {
  const pokemonliste({Key? key}) : super(key: key);

  @override
  State<pokemonliste> createState() => _pokemonlisteState();
}

class _pokemonlisteState extends State<pokemonliste> {
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
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>pokemoninfo()));

                  },
                  child: Text("Pokemon",style: TextStyle(fontSize: 20,),)),
              Icon(Icons.catching_pokemon,
                color: Colors.red,
                size:20,),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/pokemon.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
