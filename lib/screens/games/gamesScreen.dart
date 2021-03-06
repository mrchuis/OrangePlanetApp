import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/games/components/body.dart';

class Games extends StatefulWidget {
  GamesState createState() {
    return new GamesState();
  }
}

class GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Игры',
          // style: TextStyle(
          //   fontSize: 28.0,
          //   //fontWeight: FontWeight.bold,
          // ),
        ),
        elevation: 0.0,
      ),
      body: Body(),
    );
  }
}
