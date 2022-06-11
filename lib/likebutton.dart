import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';


class lilebutton extends StatefulWidget {
  const lilebutton({Key? key}) : super(key: key);

  @override
  State<lilebutton> createState() => _lilebuttonState();
}

class _lilebuttonState extends State<lilebutton> {
  bool isLiked=false;

  @override
  Widget build(BuildContext context) {
    final double size=40;
    return LikeButton(
      size:40,
      isLiked:isLiked,
      likeBuilder:(isLiked){
        final color=isLiked ? Colors.red : Colors.black;
        Icon(Icons.favorite,color:color,size:size);
      },

    );
  }
}


