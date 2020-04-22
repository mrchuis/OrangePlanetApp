import 'package:flutter/material.dart';

class Songs extends StatefulWidget {
  SongsState createState() {
    return new SongsState();
  }
}

class SongsState extends State<Songs> {
  
  TextEditingController _textController = TextEditingController();

  final duplicateItems = List<Song>.from(getSongs())..sort((a,b) {
    return a.title.toLowerCase().compareTo(b.title.toLowerCase());
  });
  var songs = List<Song>();

  @override
  void initState() {
    songs.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<Song> dummySearchList = List<Song>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<Song> dummyListData = List<Song>();
        dummySearchList.forEach((item) {
        if(item.title.toLowerCase().contains(query) || 
        item.singer.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        songs.clear();
        songs.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        songs.clear();
        songs.addAll(duplicateItems);
      });
    }
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
              onChanged: filterSearchResults,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      songs[index].title,
                    ),
                    subtitle: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 10,
                        child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(songs[index].singer,
                              style: TextStyle(color: Colors.black87)
                            )
                          ),
                      )
                    ],
                  ),
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(song: songs[index])
                        ),
                      );
                    },
                  ),
                );
              }),
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   ListTile makeListTile(Song song) => ListTile(
  //     title: Text(
  //       song.title,
  //       style: TextStyle(fontWeight: FontWeight.bold),
  //     ),
  //     subtitle: Row(
  //       children: <Widget>[
  //         Expanded(
  //           flex: 4,
  //           child: Padding(
  //               padding: EdgeInsets.only(left: 0.0),
  //               child: Text(song.singer,
  //                   style: TextStyle(color: Colors.black87))),
  //         )
  //       ],
  //     ),
  //     onTap: () {
  //       Navigator.push(
  //         context, 
  //         MaterialPageRoute(
  //           builder: (context) => SecondScreen(song: song,)
  //         )
  //       );
  //     },
  //   );
  //   Card makeCard(Song song) => Card(
  //     elevation: 7.0,
  //     margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
  //     child: Container(
  //       child: makeListTile(song),
  //     ),
  //   );

  //   final makeBody = Container(
  //     child: ListView.builder(
  //       scrollDirection: Axis.vertical,
  //       shrinkWrap: true,
  //       itemCount: songs.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         return makeCard(songs[index]);
  //       },
  //     ),
  //   );

  //   return Scaffold(
  //     appBar: AppBar (
  //       centerTitle: true,
  //       title: Text('Песни'),      
  //     ),
  //     body: Column(
  //       children: <Widget>[
  //         Padding(
  //           padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
  //           child: TextField(
  //             controller: _textController,
  //             decoration: InputDecoration(
  //               hintText: 'Поиск песни',
  //               filled: true,
  //               fillColor: Colors.white70,
  //               prefixIcon: Icon(Icons.search,
  //                 color: Colors.orange,
  //                 size: 25.0,
  //               ),
  //               contentPadding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
  //               enabledBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //                 borderSide: BorderSide(color: Colors.orange, width:1),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //                 borderSide: BorderSide(color: Colors.orange, width:1),
  //               )
  //             ),
  //             onChanged: onItemChanged,
  //           ),
  //         ),
  //         Expanded(
  //           child: makeBody,
  //         ) 
  //       ],
  //     )
  //   );
  // }
}


class Song {
  String title;
  String singer;
  String content;
  Song({this.title, this.singer, this.content});

  getTitle() => title;
}

List<Song> getSongs() {
  return [
    Song(
      title: "Алые паруса",
      singer: "",
      content: "У синего моря, Где бушуют бураны, Жила там девчонка\nС именем странным.",
    ),
    Song(
      title: "До скорой встречи",
      singer: "Звери",
      content: "Нас немного пока, но мечтаем мы все об одном:\nЭтот мир изменить, озаряя душевным огнем.",
    ),
    Song(
      title: "Будь готов",
      singer: "",
      content: "Нас немного пока, но мечтаем мы все об одном:\nЭтот мир изменить, озаряя душевным огнем.",
    ),
    Song(
      title: "Районы-кварталы",
      singer: "Звери",
      content: "Нас немного пока, но мечтаем мы все об одном:\nЭтот мир изменить, озаряя душевным огнем.",
    ),
    Song(
      title: "Звезда по имени Солнце",
      singer: "Кино",
      content: "Белый снег, серый лед,\nНа растрескавшейся земле.\nОдеялом лоскутным на ней -\nГород в дорожной петле.",
    ),
  ];
}


class TitleSongs {
  List<String> title;
  TitleSongs(this.title);

  List<String> setTitleSongs(List<Song> songs) {
    for(var x in songs) {
      title.add(x.title);
    }
    return title;
  }
  getTitleSongs() => title;
}


class SecondScreen extends StatelessWidget {
  final Song song;
  SecondScreen({Key key, @required this.song}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${song.title}'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              song.content,
            ),
          ),
        ]
      )
    );
  }
}