import 'package:flutter/material.dart';

class Stripes extends StatelessWidget {

  final List<String> stripes = [
    'Костровой',
    'Повар',
    'Художник',
    'Рем. мастер',
    'Мастер театра',
    'Лагерник',
    'Узловой',
    'Медик',
  ];

  //items.sort((a, b) => title.compare(b.title));
  

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
        centerTitle: true,
        title: Text('Нашивки'),
      ),
      body: Center(
        child: ListView(
          children: stripes
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