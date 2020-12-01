import 'package:flutter/material.dart';
import 'package:orange_planet_app/components/categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Categories(),
      ],
    );
  }
}
