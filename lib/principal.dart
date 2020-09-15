import 'package:flutter/material.dart';
import 'videolist.dart';

class Principal extends StatelessWidget {

  //Display the list in the principal tap
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //List of videos
        VideoDUmmyList()
      ],
    );
  }
}
