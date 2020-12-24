import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:orange_planet_app/songs_components/song.dart';
import 'package:orange_planet_app/songs_components/song_screen.dart';

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
                                          SongScreen(song: song)),
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
