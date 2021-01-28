import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/songs/components/song.dart';
import 'package:orange_planet_app/screens/songs/components/song_screen.dart';

import '../../init.dart';

class Songs extends StatefulWidget {
  SongsState createState() {
    return new SongsState();
  }
}

class SongsState extends State<Songs> {
  static List<Song> songsList = getSongsList();

  static List<Song> getSongsList() {
    return Init.songsSortList;
  }

  _playstoreURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.mrchuis.orange_planet_app';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static const int GAMES_LIMIT = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Песни'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: songsList.length,
                itemBuilder: (context, index) {
                  Song song = songsList[index];
                  if (index <= GAMES_LIMIT) {
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
                                      style: TextStyle(color: Colors.black87))),
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
                  } else {
                    return Card(
                      child: ListTile(
                        trailing: Icon(Icons.lock_outlined),
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
                                      style: TextStyle(color: Colors.black87))),
                            )
                          ],
                        ),
                        onTap: () {
                          return showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Заблокировано'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text(
                                            'В бесплатной версии ограничен список песен и игр.'),
                                        Text(
                                            '\nПолный доступ ко всем функциям приложения доступен в pro-версии за 69 рублей.'),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Назад'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: Text('Купить'),
                                      onPressed: () {
                                        _playstoreURL();
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    );
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
