import 'package:flutter/material.dart';
import 'principal.dart';
import 'xplorrer.dart';
import 'playlist.dart';

class BottonNavigate extends StatefulWidget {
  @override
  _BottonNavigateState createState() => _BottonNavigateState();
}

class _BottonNavigateState extends State<BottonNavigate> {

  //Initialize indexTap in 0 to when open the app seems the home tap
  int indexTap = 0;

  //List of widgets that contain the botton navigation
  final List<Widget> widgetsChildren = [
    Principal(),
    Xplorer(),
    PlayList()

  ];

  //Funcion that assign the index when is tap some tap in the bottonnaviggate
  void onTapTapped(int index){
    setState(() {
      //indexTap is equivalent to index
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("My Clone of Youtube")),

      //Bodi to everytap
      body: widgetsChildren[indexTap],
      //theme of widget
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          //color of the tap unpressed
          canvasColor: Colors.white,
          //color of the pressed
          primaryColor: Colors.red
        ),
        child: BottomNavigationBar(
          //when pressed the tap send th eindex to display correct tap
          onTap: onTapTapped,
          //give the index tap to indexTap
          currentIndex: indexTap,
          items: [
            //Items or taps
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Principal")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Text("Xplorer")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_play),
                title: Text("Xplorer")
            )
          ],
        ),
      ),
    );
  }
}
