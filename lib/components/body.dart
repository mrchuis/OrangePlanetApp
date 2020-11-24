import 'package:flutter/material.dart';
import 'package:orange_planet_app/components/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/home_bg.png",
          //height: getProportionateScreenHeight(340),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
