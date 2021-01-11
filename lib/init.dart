import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'screens/songs/components/song.dart';

class Init extends StatelessWidget {
  static List<Song> songsSortList;
  static Future initialize(BuildContext context) async {
    await _loadSongs(context);
  }

  static _loadSongs(BuildContext context) async {
    final manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final pathToSongs = manifestMap.keys
        .where((String key) => key.contains('assets/songs/'))
        .where((String key) => key.contains('.txt'))
        .toList();
    String responseText;
    List<String> songsFileList = List<String>();
    if (pathToSongs.isNotEmpty) {
      for (var song in pathToSongs) {
        responseText = await rootBundle.loadString('$song');
        songsFileList.add(responseText);
      }
    }
    songsSortList = _parseSongFiles(songsFileList);
  }

  static _parseSongFiles(songsFileList) {
    var duplicateItems = new List<Song>();
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

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
