import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Songs extends StatefulWidget {
  SongsState createState() {
    return new SongsState();
  }
}

class SongsState extends State<Songs> {
  
  TextEditingController _textController = TextEditingController();

  final duplicateItems = List<Song>.from(getSongs())..sort((a,b) {
    return a.singer.toLowerCase().compareTo(b.singer.toLowerCase());
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
      content: 'C\nУ синего моря,\nAm\nГде бушуют бураны,\nDm\nЖила там девчонка\nG\nС именем странным.\nC\nИ часто бывало\nAm\nОна на просторе\nDm\nВ мечтах уплывала\nG\nЗа синее море.\n\nПрипев:\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm      G                C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm      G                C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\n\nC\nА там за морями,\nAm\nЗа синей чертою.\nDm\nЖил парень отважный.\nG\nС открытой душою.\nC\nМечтал он о море,\nAm\nО подвигах славных.\nDm\nМечтал о походах\nG\nВ дальние страны.\n\nПрипев:\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm      G                C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm      G                C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\n\nC\nИ вечером поздним,\nAm\nКогда все уснули,\nDm\nНа небе зажглись\nG\nМиллионы огней.\nC\nИ этой же ночью\nAm\nСлучилось чудо.\nDm\nТот парень с девчонкой\nG\nВлюбились друг в друга.\n\nПрипев:\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm      G                C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}\nC\nАлые паруса. Ассоль.\nAm\nАлые паруса. Плюс Грей.\nDm      G                C\nАлые паруса, паруса. Ассоль + Грей = \u{2665}',
    ),
    Song(
      title: "До скорой встречи",
      singer: "Звери",
      content: '\nВчерашний вечер\nИз подворотни, на все согласен\nСпасаться нечем\nИ я охотник и я опасен',
    ),
    Song(
      title: "Будь готов",
      singer: "",
      content: ' Am                                                                             Dm\nНас немного пока, но мечтаем мы все об одном:\n G                                                                 C                        E\nЭтот мир изменить, озаряя душевным огнем.\n Am                           \nИскру мысли вдохнуть в сочетание\n Dm\nстареньких слов,\n G                                                                                             C\nЧтобы снова гремел над страной наш девиз\n                E\n"Будь готов!"\n\nПрипев:\n Dm                                   G                                     C\nБудь готов с нами вместе идти до конца,\n                                   Am                                              Dm\nБудь готов удержаться под градом свинца,\n                                              G                                             C\nБудь готов стать сторонником лучших идей,\n                                         E                                           Am\nБудь готов воспитать настоящих людей.\n\n Am                                                                          Dm\nПо ухабам истории путь где-то - вверх, где-то - вниз.\n G                                                                  C                     E\nКак народная мудрость гласит: «На ошибках учись»!\n Am                                                                          Dm\nНелегко нам сегодня добиться реальных побед,\n G                                                  C                            E\nНо гораздо трудней в одиночку бороться тебе.\n\nПрипев:\n Dm                                   G                                     C\nБудь готов с нами вместе идти до конца,\n                                   Am                                              Dm\nБудь готов удержаться под градом свинца,\n                                              G                                             C\nБудь готов стать сторонником лучших идей,\n                                         E                                           Am\nБудь готов воспитать настоящих людей.\n\n Am                                                                               Dm\nМы не "Ласковый май", мы, скорее, суровый февраль!\n G                                                       C                         E\nШутки в сторону, видите - здесь закаляется сталь!\n Am                                                                                Dm\nЧерез тернии - к звездам, нелегким, но верным путем,\n G                                           C                                  E\nТолько за руки взявшись, мы к цели заветной придем!\n\nПрипев:\n Dm                                   G                                     C\nБудь готов с нами вместе идти до конца,\n                                   Am                                              Dm\nБудь готов удержаться под градом свинца,\n                                              G                                             C\nБудь готов стать сторонником лучших идей,\n                                         E                                           Am\nБудь готов воспитать настоящих людей.',
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

// class TitleSongs {
//   List<String> title;
//   TitleSongs(this.title);

//   List<String> setTitleSongs(List<Song> songs) {
//     for(var x in songs) {
//       title.add(x.title);
//     }
//     return title;
//   }
//   getTitleSongs() => title;
// }

class SecondScreen extends StatefulWidget {
  final Song song;
  SecondScreen({Key key, @required this.song}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  bool scroll = false;
  int speedFactor = 6;
  bool check = true;
  bool startPause = true;

  _scroll() {
    double maxExtent = _scrollController.position.maxScrollExtent;
    double distanceDifference = maxExtent - _scrollController.offset;
    double durationDouble = distanceDifference / speedFactor;

    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(seconds: durationDouble.toInt()),
      curve: Curves.linear
    );
  }

  _toggleScrolling() {
    setState(() {
      scroll = !scroll;
    });

    if (scroll) {
      _scroll();
    } else {
      _scrollController.animateTo(
        _scrollController.offset,
        duration: Duration(seconds: 1), 
        curve: Curves.linear
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: 
      FloatingActionButtonLocation.endDocked,
      floatingActionButton: check ? play() : pause(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[100],
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.fast_rewind), 
              color: Colors.grey[700],
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.fast_forward),
              color: Colors.grey[700], 
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: NotificationListener(
        onNotification: (notif) {
          if (notif is ScrollEndNotification && scroll) {
            Timer(Duration(seconds: 1), () {
              _scroll();
            });
          }
          return true;
        },
        child: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 50.0,
              floating: true,
              pinned: false,
              flexibleSpace: new FlexibleSpaceBar(
                title: Text('${widget.song.title}'),
              ),
            ),
            SliverList(
              delegate:SliverChildBuilderDelegate(
                (content, index) => SingleChildScrollView(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    widget.song.content,
                    style: GoogleFonts.lato(                    
                    )
                  ),
                ),
                childCount: 1,
              )
            )
          ],
        ),
      ),
    );
  }

  Widget play() {
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          check=!check;
          _toggleScrolling();
        });
      },
      foregroundColor: Colors.grey[700],
      child: Icon(Icons.play_arrow),
    );
  }

  Widget pause() {
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          check=!check;
          _toggleScrolling();
        });
      },
      foregroundColor: Colors.grey[700],
      child: Icon(Icons.pause),
    );
  }

  // Widget loadTimer() {
  //   return FloatingActionButton(
  //       // setState(() {
  //       //   check=!check;
  //       //   _toggleScrolling();
  //       // });
  //     onPressed: (){
  //       // setState(() {
  //       //   check=!check;
  //       //   _toggleScrolling();
  //       // });
  //     },
  //     foregroundColor: Colors.grey[700],
  //     child: Icon(MdiIcons.numeric3),
  //   );
  // }
}
