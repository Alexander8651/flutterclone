import 'package:flutter/material.dart';

class FloatinActionButtonDislike extends StatefulWidget {
  @override
  _FloatinActionButtonDislikeState createState() => _FloatinActionButtonDislikeState();
}

class _FloatinActionButtonDislikeState extends State<FloatinActionButtonDislike> {

  //if the botton is pressed display a snapbar
  void onPressedFav(){
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("You unlike this video"),
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
          Icons.thumb_down
      ),
    );
  }
}
