import 'package:flutter/material.dart';

class Stripes extends StatelessWidget {

  final List<String> items = [
    'Костровой',
    'Повар',
    'Художник',
    'Рем. мастер',
    'Мастер театра',
    'Лагерник',
    'Узловой',
    'Медик',
  ];

  void getItemAndNavigate(String item, BuildContext context) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => SecondScreen(itemHolder : item)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Нашивки'),
      ),
      body: Center(
        child: ListView(
          children: items
          .map((data) => ListTile(
            title: Text(data),
            onTap: ()=>{
              getItemAndNavigate(data, context)
            }
          ))
          .toList(),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String itemHolder;
  SecondScreen({Key key, @required this.itemHolder}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$itemHolder'),
      ),
    );
  }
}