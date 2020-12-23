import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Songs extends StatefulWidget {
  SongsState createState() {
    return new SongsState();
  }
}

class SongsState extends State<Songs> {
  //TextEditingController _textController = TextEditingController();

  List<Song> duplicateItems = List<Song>();
  List<Song> songsSortList;

  Future<List<Song>> _getSongs() async {
    if (songsSortList != null) {
      return songsSortList;
    }
    final manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final pathToSongs = manifestMap.keys
        .where((String key) => key.contains('assets/songs/'))
        .where((String key) => key.contains('.txt'))
        .toList();
    // записываем содержимое файлов в songFileList
    String responseText;
    List<String> songsFileList = List<String>();
    if (pathToSongs.isNotEmpty) {
      for (var song in pathToSongs) {
        responseText = await rootBundle.loadString('$song');
        songsFileList.add(responseText);
      }
    }
    songsSortList = _parseSongFiles(songsFileList);
    print(songsSortList.length);
    return songsSortList;
  }

  _parseSongFiles(songsFileList) {
    var songsTemp = new List<Song>();
    String content = "";
    int counter = 0;
    for (var text in songsFileList) {
      Song file = new Song();
      String singerAndTitle = "";
      for (int i = 0; i < text.length; i++) {
        if (text[i] == '\n') {
          if (counter == 1) {
            content = text.substring(++i);
            counter = 0;
            break;
          }
          counter++;
        }
        singerAndTitle = singerAndTitle + text[i];
      }
      List<String> arr = singerAndTitle.split('\n');
      file.singer = arr[0];
      file.title = arr[1];
      file.content = content;
      songsTemp.add(file);
    }
    duplicateItems = List<Song>.from(songsTemp)
      ..sort((a, b) {
        return a.singer.toLowerCase().compareTo(b.singer.toLowerCase());
      });
    return duplicateItems;
  }

  void filterSearchResults(String query) {
    List<Song> dummySearchList = List<Song>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<Song> dummyListData = List<Song>();
      dummySearchList.forEach((item) {
        if (item.title.toLowerCase().contains(query) ||
            item.singer.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        songsSortList.clear();
        songsSortList.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        songsSortList.clear();
        songsSortList.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Песни'),
      ),
      body: Column(
        children: <Widget>[
          // пока убрал поиск песен, т.к. работает неправильно
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
          //   child: TextField(
          //     controller: _textController,
          //     decoration: InputDecoration(
          //         hintText: 'Поиск песни',
          //         filled: true,
          //         fillColor: Colors.white70,
          //         prefixIcon: Icon(
          //           Icons.search,
          //           color: Colors.orange,
          //           size: 25.0,
          //         ),
          //         contentPadding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
          //         enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //           borderSide: BorderSide(color: Colors.orange, width: 1),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //           borderSide: BorderSide(color: Colors.orange, width: 1),
          //         )),
          //     onChanged: filterSearchResults,
          //   ),
          // ),
          Expanded(
            child: Container(
              child: FutureBuilder(
                future: _getSongs(),
                builder: (context, projectSnap) {
                  if (projectSnap.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Загрузка песен..."),
                      ),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: projectSnap.data.length,
                        itemBuilder: (context, index) {
                          Song song = projectSnap.data[index];
                          return Card(
                            child: ListTile(
                              title: Text(
                                song.title,
                              ),
                              subtitle: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 10,
                                    child: Padding(
                                        padding: EdgeInsets.all(1.0),
                                        child: Text(song.singer,
                                            style: TextStyle(
                                                color: Colors.black87))),
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SecondScreen(song: song)),
                                );
                              },
                            ),
                          );
                        });
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Song {
  String title;
  String singer;
  String content;
  Song({this.title, this.singer, this.content});
}

class SecondScreen extends StatefulWidget {
  final Song song;
  SecondScreen({Key key, @required this.song}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with TickerProviderStateMixin {
  Widget _myWidget(BuildContext context) {
    final style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w500,
    );

    final underlineStyle = TextStyle(
      color: Colors.white,
    );

    final spans = _getSpans(widget.song.content, style, underlineStyle);

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2.copyWith(),
        children: spans,
      ),
    );
  }

  List<TextSpan> _getSpans(
      String text, TextStyle style, TextStyle underlineStyle) {
    List<TextSpan> spans = [];
    int spanBoundary = 0;

    do {
      // look for the next match
      final startIndex = text.indexOf(
          new RegExp(
              r"Am|A7|A|Bm|B7|B|C7|Cm|C|Dm|Dm7|D7|D|Em|E7|E|Fm|F7|F|Gm|G7|G|_"),
          spanBoundary);
      if (startIndex == -1) {
        spans.add(TextSpan(text: text.substring(spanBoundary)));
        break;
      }
      // add any unstyled text before the next match
      spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
      // style the matched text
      final endIndex = startIndex + 2;
      final spanText = text.substring(startIndex, endIndex);
      if (spanText == "__") {
        spans.add(TextSpan(text: spanText, style: underlineStyle));
      } else if (spanText == "_ ") {
        spans.add(TextSpan(text: spanText, style: underlineStyle));
      } else {
        spans.add(TextSpan(text: spanText, style: style));
      }
      // mark the boundary to start the next search from
      spanBoundary = endIndex;
      // continue untill there are no more matches
    } while (spanBoundary < text.length);
    return spans;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  ScrollController _scrollController = ScrollController();
  bool scroll = false;
  int speedFactor = 7;

  bool check = true;
  bool firstPause = true;
  bool firstPressedPlay = true;
  bool activeProgressIndicator = false;

  int _speedCounter = 4;
  Map<int, String> _speed = {
    1: "Замедление max",
    2: "Замедление x4",
    3: "Замедление x2",
    4: "Нормальная скорость",
    5: "Ускорение x2",
    6: "Ускорение x4",
    7: "Ускорение max",
  };

  _scroll() {
    double maxExtent = _scrollController.position.maxScrollExtent;
    double distanceDifference = maxExtent - _scrollController.offset;
    double durationDouble = distanceDifference / speedFactor;

    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: Duration(seconds: durationDouble.toInt()),
        curve: Curves.linear);
  }

  void _accel() {
    setState(() {
      if (speedFactor < 12) {
        speedFactor = speedFactor + 2;
        _scroll();
      }
    });
  }

  void _decel() {
    setState(() {
      if (speedFactor > 4) {
        speedFactor = speedFactor - 2;
        _scroll();
      }
    });
  }

  _toggleScrolling() {
    setState(() {
      scroll = !scroll;
    });
    if (scroll) {
      _scroll();
    } else {
      _scrollController.animateTo(_scrollController.offset,
          duration: Duration(seconds: 1), curve: Curves.linear);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
                icon: Icon(
                  Icons.fast_rewind,
                  color: Colors.orange[700],
                ),
                onPressed: () {
                  if (_speedCounter >= 2 && check == false) {
                    _decel();
                    --_speedCounter;
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text('${_speed[_speedCounter]}'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.black.withOpacity(0.85),
                    ));
                  }
                }),
            IconButton(
              icon: Icon(
                Icons.fast_forward,
                color: Colors.orange[700],
              ),
              onPressed: () {
                if (_speedCounter <= 6 && check == false) {
                  _accel();
                  ++_speedCounter;
                  _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text('${_speed[_speedCounter]}'),
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.black.withOpacity(0.85),
                  ));
                }
              },
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
                delegate: SliverChildBuilderDelegate(
              (content, index) => SingleChildScrollView(
                padding: EdgeInsets.only(left: 10.0),
                child: _myWidget(context),
              ),
              childCount: 1,
            ))
          ],
        ),
      ),
    );
  }

  Widget play() {
    return FloatingActionButton(
      backgroundColor: Colors.orange,
      tooltip: "5 секунд",
      onPressed: () {
        if (firstPause) {
          _scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text('Автопрокрутка текста через 15 секунд'),
            duration: Duration(seconds: 5),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.black.withOpacity(0.85),
          ));
          Timer(Duration(seconds: 15), () {
            check = !check;
            _toggleScrolling();
          });
          firstPause = false;
        }
        setState(() {
          if (firstPressedPlay) {
            activeProgressIndicator = true;
            firstPressedPlay = false;
          } else {
            check = !check;
            _toggleScrolling();
          }
        });
      },
      child: activeProgressIndicator
          ? CircularProgressIndicator(
              backgroundColor: Colors.white,
            )
          : Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
    );
  }

  Widget pause() {
    return FloatingActionButton(
      backgroundColor: Colors.orange,
      onPressed: () {
        setState(() {
          activeProgressIndicator = false;
          check = !check;
          _toggleScrolling();
        });
      },
      child: Icon(
        Icons.pause,
        color: Colors.white,
      ),
    );
  }
}
