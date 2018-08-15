import 'package:flutter/material.dart';

class Feed extends StatefulWidget{
  @override
  FeedState createState() => FeedState();
}

class FeedState extends State<Feed>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home", style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.account_circle, color: Colors.grey, size: 35.0,),
      ),
    );
  }
}