import 'package:flutter/material.dart';
import 'package:flutter_twitter/pages/Feed.dart';
import 'package:flutter_twitter/pages/Search.dart';
import 'package:flutter_twitter/pages/Notifications.dart';
import 'package:flutter_twitter/pages/Messages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var selectedPageIndex = 0;

  var pages = [
    Feed(),
    Search(),
    Notifications(),
    Messages(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pages[selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(FontAwesomeIcons.home, color: selectedPageIndex == 0? Colors.blue : Colors.blueGrey,),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(FontAwesomeIcons.search, color: selectedPageIndex == 1? Colors.blue : Colors.blueGrey,),
          ),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(FontAwesomeIcons.bell, color: selectedPageIndex == 2? Colors.blue : Colors.blueGrey,)
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(FontAwesomeIcons.envelope, color: selectedPageIndex == 3? Colors.blue : Colors.blueGrey,),
          ),
        ], onTap: (index) {
          setState(() {
            selectedPageIndex = index;
          });
        }, currentIndex: selectedPageIndex)
    );
  }
}