import 'package:orange_planet_app/init.dart';

import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/songs/components/song.dart';
import 'package:orange_planet_app/screens/songs/components/song_screen.dart';

class Songs extends StatefulWidget {
  SongsState createState() {
    return new SongsState();
  }
}

class SongsState extends State<Songs> {
  TextEditingController _textController = TextEditingController();

  static List<Song> songsList = getSongsList();

  // Copy Main List into New List.
  List<Song> newSongsList = List.from(songsList);

  filterSearchResults(String query) {
    List<Song> dummySearchList = List<Song>();
    dummySearchList.addAll(songsList);
    if (query.isNotEmpty) {
      List<Song> dummyListData = List<Song>();
      dummySearchList.forEach((item) {
        if (item.title.toLowerCase().contains(query) ||
            item.singer.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        newSongsList.clear();
        newSongsList.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        newSongsList.clear();
        newSongsList.addAll(songsList);
      });
    }
  }

  static List<Song> getSongsList() {
    return Init.songsSortList;
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Поиск песни',
                  filled: true,
                  fillColor: Colors.white70,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                    size: 25.0,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.orange, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.orange, width: 1),
                  )),
              onChanged: filterSearchResults,
            ),
          ),
          Expanded(
            child: Container(
                child: ListView.builder(
                    itemCount: newSongsList.length,
                    itemBuilder: (context, index) {
                      Song song = newSongsList[index];
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
                                        style:
                                            TextStyle(color: Colors.black87))),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SongScreen(song: song)),
                            );
                          },
                        ),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
