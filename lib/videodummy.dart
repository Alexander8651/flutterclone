import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'floatingactionbuttonlike.dart';
import 'floatingactionbuttondislike.dart';

class VideoDummy extends StatelessWidget {

  // path where is the file
  String pathImage = "assets/img/canocristales.jpg";

  //constructor of dummy
  VideoDummy(this.pathImage);

  @override
  Widget build(BuildContext context) {

    //Card of image video
    final card = Container(
      height: 250.0,
      width: 450.0,
      margin: EdgeInsets.only(
        top: 10.0
      ),

      //Decoration of card of the container video
      decoration: BoxDecoration(
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    //Stack to put widget inside other
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        card,
        Row(
          children: [
            FloatinActionButtonLike(),
            FloatinActionButtonDislike()
          ],
        )
      ],
    );
  }
}
