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
      content: 'C\nУ синего моря,\nAm\nГде бушуют бураны,\nDm\nЖила там девчонка\nG\nС именем странным.\nC\nИ часто бывало\nAm\nОна на просторе\nDm\nВ мечтах уплывала\nG\nЗа синее море.\n\nПрипев:\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm    G        C\nАлые паруса, паруса. Ассоль плюс Грей.\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm    G        C\nАлые паруса, паруса. Ассоль плюс Грей.\n\nC\nА там за морями,\nAm\nЗа синей чертою.\nDm\nЖил парень отважный.\nG\nС открытой душою.\nC\nМечтал он о море,\nAm\nО подвигах славных.\nDm\nМечтал о походах\nG\nВ дальние страны.\n\nПрипев:\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm    G        C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm    G        C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\n\nC\nИ вечером поздним,\nAm\nКогда все уснули,\nDm\nНа небе зажглись\nG\nМиллионы огней.\nC\nИ этой же ночью\nAm\nСлучилось чудо.\nDm\nТот парень с девчонкой\nG\nВлюбились друг в друга.\n\nПрипев:\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm    G        C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm    G        C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\n',
    ),
    Song(
      title: "До скорой встречи",
      singer: "Звери",
      content: '\nВчерашний вечер\nИз подворотни, на все согласен\nСпасаться нечем\nИ я охотник и я опасен',
    ),
    Song(
      title: "Будь готов",
      singer: "",
      content: '\nНас немного пока, но мечтаем мы все об одном:\nЭтот мир изменить, озаряя душевным огнем.',
    ),
    Song(
      title: "Районы-кварталы",
      singer: "Звери",
      content: '\nНас немного пока, но мечтаем мы все об одном:\nЭтот мир изменить, озаряя душевным огнем.',
    ),
    Song(
      title: "Звезда по имени Солнце",
      singer: "Кино",
      content: '\nБелый снег, серый лед,\nНа растрескавшейся земле.\nОдеялом лоскутным на ней -\nГород в дорожной петле.',
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
        title: Text(
          '${song.title}'
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10.0),
        child: Text(
          song.content,
          style: TextStyle(
            wordSpacing: 2.0,
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
    );
  }
}