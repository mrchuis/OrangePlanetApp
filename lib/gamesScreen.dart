import 'package:flutter/material.dart';
import 'package:orange_planet_app/components/body.dart';

import 'components/size_config.dart';

class Games extends StatefulWidget {
  GamesState createState() {
    return new GamesState();
  }
}

// Подвижные игры,
// Игры на знакомство,
// Игры на сплочение,
// Игры с залом,
// Психологические игры,
// Игры пятиминутки
class GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      //appBar: AppBar(),
      body: Body(),
    );
  }
}
