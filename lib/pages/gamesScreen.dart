import 'package:flutter/material.dart';
import 'package:orange_planet_app/components/body.dart';

import '../components/size_config.dart';

class Games extends StatefulWidget {
  GamesState createState() {
    return new GamesState();
  }
}

class GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Игры'),
      ),
      body: Body(),
    );
  }
}
