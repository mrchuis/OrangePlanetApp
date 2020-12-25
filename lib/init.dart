import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;


class Init {

  static List<String> songsSortList;
  
  static Future initialize() async {
    await _loadSongs();
  }

  static _loadSongs() async {
    print("starting loaded songs");
    //final manifestContent =
    //    await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    //final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    //final pathToSongs = manifestMap.keys.where((String key) => key.contains('assets/songs/')).where((String key) => key.contains('.txt')).toList();
    
    String song1 = await rootBundle.loadString('assets/songs/agata_kristi_kak_na_voyne.txt');
    songsSortList.add(song1);
    
    //await Future.delayed(Duration(seconds: 5));
    print("finished loaded songs");
  }

  List<String> getSongs() {
    return songsSortList;
  }
}