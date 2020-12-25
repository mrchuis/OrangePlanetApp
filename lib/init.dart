class Init {
  
  static Future initialize() async {
    await _loadSongs();
  }

  static _loadSongs() async {
    print("starting loaded songs");
    await Future.delayed(Duration(seconds: 5));
    print("finished loaded songs");
  }
}