import 'package:flutter/material.dart';

class Stripes extends StatefulWidget {
  StripesState createState() {
    return new StripesState();
  }
}

class StripesState extends State<Stripes> {

  TextEditingController _textController = TextEditingController();

  static List<String> stripesList = [
    'Барабанщик',
    'Костровой',
    'Повар',
    'Скалолаз',
    'Художник',
    'Рем. мастер',
    'Мастер театра',
    'Матрос',
    'Лагерник',
    'Узловой',
    'Медик',
  ];

  List<String> newStripesList = List.from(stripesList..sort());

  void getItemAndNavigate(String item, BuildContext context) {
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => SecondScreen(itemHolder : item)
      )
    );
  }

  void onItemChanged(String value) {
    setState(() {
      newStripesList = stripesList
      .where((string) => string.toLowerCase().contains(value.toLowerCase()))
      .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        centerTitle: true,
        title: Text('Нашивки'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Поиск нашивки',
                filled: true,
                fillColor: Colors.white70,
                prefixIcon: Icon(Icons.search,
                  color: Colors.orange,
                  size: 25.0,
                ),
                contentPadding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange, width:1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange, width:1),
                )
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              children: newStripesList
              .map((data) => ListTile(
                title: Text(data),
                onTap: ()=>{
                  getItemAndNavigate(data, context)
                }
              ))
              .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String itemHolder;
  SecondScreen({Key key, @required this.itemHolder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$itemHolder'),
      ),
    );
  }
}