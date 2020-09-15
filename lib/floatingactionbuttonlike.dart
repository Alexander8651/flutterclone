import 'package:flutter/material.dart';

class FloatinActionButtonLike extends StatefulWidget {
  @override
  _FloatinActionButtonLikeState createState() => _FloatinActionButtonLikeState();
}

class _FloatinActionButtonLikeState extends State<FloatinActionButtonLike> {

  //if the botton is pressed display a snapbar
  void onPressedFav(){
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("You like this video"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red,
      mini: true,
      tooltip: "Like",
      onPressed: onPressedFav,
      child: Icon(
          Icons.thumb_up
      ),
    );
  }
}
