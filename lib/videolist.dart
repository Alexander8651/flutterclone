import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'videodummy.dart';

class VideoDUmmyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 709.0,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          //Every videodummy in th elist
          VideoDummy("assets/img/canocristales.jpg"),
          VideoDummy("assets/img/parquecafe.jpg"),
          VideoDummy("assets/img/sierranevada.jpg"),
          VideoDummy("assets/img/viajero.jpg"),
          VideoDummy("assets/img/viajero2.jpg"),
          VideoDummy("assets/img/viajero3.jpg"),

        ],
      ),
    );
  }
}
