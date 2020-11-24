import 'package:flutter/material.dart';


class Games extends StatefulWidget {
  GamesState createState() {
    return new GamesState();
  }
}

// Подвижные игры, Игры на знакомство, Игры на сплочение, Игры с залом, Психологические игры, Игры пятиминутки
class GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Игры'),   
      ),
      body: Column(
        children: <Widget>[
          Text("Игры"),
        ],
      ),  
    );
  }
}