import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'icon/icon.png',
              width: 250,
            ),
          ),
          CircularProgressIndicator(
            backgroundColor: Color(0xFFF37120),
          ),
          SizedBox(height: 20),
          Text(
            "Загрузка...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF37120),
            ),
          ),
        ],
      ),
    );
  }
}
