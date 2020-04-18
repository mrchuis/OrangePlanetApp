import 'package:flutter/material.dart';

class Songs extends StatefulWidget {
  SongsState createState() {
    return new SongsState();
  }
}

class SongsState extends State<Songs> {
  TextEditingController _textController = TextEditingController();

  static List<String> songsList = [
    'Просто нечего нам больше терять',
    'Будь готов',
    'Поехали скорей',
    'Волшебник починки',
    'Алые паруса',
    'Элизиум - Все острова',
    'Сплин - Выхода нет',
    'Сплин - Мое Сердце',
    'Звери - До скорой встречи',
    'Звери - Районы, кварталы',
    'Кино - Группа крови',
    'Кино - Звезда по имени солнце',
  ];

  List<String> newSongsList = List.from(songsList..sort());
  
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
      newSongsList = songsList
      .where((string) => string.toLowerCase().contains(value.toLowerCase()))
      .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        centerTitle: true,
        title: Text('Песни'),      
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Поиск песни',
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
              children: newSongsList
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$itemHolder'),
      ),
    );
  }
}