import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }

}

class _State extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    final search = Row(
      children: [
        Flexible(
          child: TextField(
            decoration: InputDecoration(hintText: 'Search School Name/Major'),
          ),
        ),
        SizedBox(width: 18),
        FloatingActionButton(onPressed: (){}, child: Icon(Icons.account_circle_rounded,size: 40,)),
      ],
    );

    final slideshow = Image.asset('image/download.jpg');

    final aboutschools = Row(
      children: [
        SizedBox(width: 26),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('About School', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        ),
      ],
    );

    final body = ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 26),
          child: search,
        ),
        slideshow,
        aboutschools,
      ],
    );

    final homepagebar = BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.event_note), label: 'News'),
      BottomNavigationBarItem(icon: Icon(Icons.school_rounded), label: 'SholarShips'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
    ]);

    return Scaffold(
      body: body,
      bottomNavigationBar: homepagebar,
    );
  }
/*  Widget ListFuc (String title, String subtitle, String location){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 18)),
        Text(subtitle, style: TextStyle(color: Colors.black.withOpacity(0.6))),
        Image.asset('image/download.jpg', height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(onPressed: (){}, child: Text('More Detail'), textColor: Color(0xFF6200EE)),
            Icon(Icons.star),
          ],
        ),
      ],
    );
  }*/

}