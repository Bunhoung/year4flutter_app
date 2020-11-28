import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UniversityDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final title = Title(color: Colors.black, child: Text('Royal University of Phnom Penh', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)));

    final slideshow = Image.asset('image/download.jpg');

    final history = Column(
      children: [
        textstyletitle('History'),
        textstyletext('jl;aksdf;oasdflasdfjasdfjlkaskdfjo;iasdclasdflkasjdf'),
      ],
    );

    final U_body = ListView(
      children: [
        slideshow,
        title,
        Divider(),
        history,
        
    ],
    );

    final U_bottomNavBar = BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.event_note), label: 'News'),
      BottomNavigationBarItem(icon: Icon(Icons.school_rounded), label: 'SholarShips'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
    ]);

    return Scaffold(
      body: U_body,
      bottomNavigationBar: U_bottomNavBar,
    );
  }
  Widget textstyletitle (String title){
    Text('text',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }

  Widget textstyletext (String title){
    Text('text',
      style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.2)),
    );
  }

}

