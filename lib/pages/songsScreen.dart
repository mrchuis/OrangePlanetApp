import 'dart:async';

import 'package:flutter/material.dart';

//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:google_fonts/google_fonts.dart';


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
              }
            ),
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
}

class SecondScreen extends StatefulWidget {
  final Song song;
  SecondScreen({Key key, @required this.song}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> with TickerProviderStateMixin {
  
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

  List<TextSpan> _getSpans(String text, TextStyle style, TextStyle underlineStyle) {
    
    List<TextSpan> spans = [];
    int spanBoundary = 0;

    do {
      // look for the next match
      final startIndex = text.indexOf(new RegExp(r"Am|A7|A|Bm|B7|B|C7|Cm|C|Dm|D7|D|Em|E7|E|Fm|F7|F|Gm|G7|G|_"), spanBoundary);
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
        spans.add(TextSpan(text: spanText, style:underlineStyle));
      } else if (spanText == "_ ") {
        spans.add(TextSpan(text: spanText, style:underlineStyle));
      }
      else {
        spans.add(TextSpan(text: spanText, style:style));
      }

      // mark the boundary to start the next search from
      spanBoundary = endIndex;
      // continue untill there are no more matches      
    } while (spanBoundary < text.length);
    return spans;
  }

  final key = GlobalKey();
  final key2 = GlobalKey();

  ScrollController _scrollController = ScrollController();
  bool scroll = false;
  int speedFactor = 7;

  bool check = true;
  bool firstPause = true;
  bool firstPressedPlay = true;
  bool activeProgressIndicator = false;

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
      _scrollController.animateTo(
        _scrollController.offset,
        duration: Duration(seconds: 1), 
        curve: Curves.linear
      );
    }
  }

  // _showTooltip()
  // {                  
  //   Timer(Duration(milliseconds: 500),
  //   final dynamic tooltip = key.currentState;
  //   tooltip.ensureTooltipVisible();
  // }

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
            Tooltip(
              //key: key,
              message: "Замедление",
              child: IconButton(
                icon: Icon(Icons.fast_rewind, color: Colors.orange[700],), 
                onPressed: () {
                  // setState(() {
                  //   final dynamic tooltip = key.currentState; 
                  //   tooltip.ensureTooltipVisible(); 
                  //   Timer(
                  //     Duration(milliseconds: 500), () { 
                  //       tooltip.ensureTooltipVisible(); 
                  //     }
                  //   );
                  // });
                  // final dynamic tooltip = key.currentState;
                  // tooltip.ensureTooltipVisible();
                  _decel();
                },
              ),
            ),
            Tooltip(
              key: key2,
              message: 'Ускорение',
              child: IconButton(
                icon: Icon(Icons.fast_forward, color: Colors.orange[700],),               
                onPressed: () {
                  final dynamic tooltip = key2.currentState;
                  tooltip.ensureTooltipVisible();
                  _accel();
                },
              ),
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
                  child: _myWidget(context),
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
      tooltip: "5 секунд",
      onPressed: (){
        if (firstPause) {
          Timer(Duration(seconds: 5),(){
            check=!check;
            _toggleScrolling();       
          });
          firstPause = false;
        }
        setState(() {
          if (firstPressedPlay) {
            activeProgressIndicator = true;
            firstPressedPlay = false;
          } else {
            check=!check;
           _toggleScrolling();
          }
        });
      },
      child: activeProgressIndicator ? CircularProgressIndicator(backgroundColor: Colors.white,) : Icon(Icons.play_arrow, color: Colors.white,),
    );
  }

  Widget pause() {
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          activeProgressIndicator = false;
          check=!check;
          _toggleScrolling();
        });
      },
      child: Icon(Icons.pause, color: Colors.white,),
    );
  }
}



List<Song> getSongs() {
  return [
    Song(
      title: "Алые паруса",
      singer: "",
      content:  'C\nУ синего моря,\n'
                'Am\nГде бушуют бураны,\n'
                'Dm\nЖила там девчонка\n'
                'G\nС именем странным.\n'
                'C\nИ часто бывало\n'
                'Am\nОна на просторе\n'
                'Dm\nВ мечтах уплывала\n'
                'G\nЗа синее море.\n'
                '\nПрипев:\n'
                'C\nАлые паруса. Ассоль.\n'
                'Am\nАлые паруса. Плюс Грей.\n'
                'Dm      G                C\n'
                'Алые паруса, паруса. Ассоль + Грей = \u{2665}\n'
                'C\nАлые паруса. Ассоль.\n'
                'Am\nАлые паруса. Плюс Грей.\n'
                'Dm      G                C\n'
                'Алые паруса, паруса. Ассоль + Грей = \u{2665}\n\n'
                'C\nА там за морями,\n'
                'Am\nЗа синей чертою.\n'
                'Dm\nЖил парень отважный.\n'
                'G\nС открытой душою.\n'
                'C\nМечтал он о море,\n'
                'Am\nО подвигах славных.\n'
                'Dm\nМечтал о походах\n'
                'G\nВ дальние страны.\n'
                '\nПрипев:\n'
                'C\nАлые паруса. Ассоль.\n'
                'Am\nАлые паруса. Плюс Грей.\n'
                'Dm      G                C\n'
                'Алые паруса, паруса. Ассоль + Грей = \u{2665}\n'
                'C\nАлые паруса. Ассоль.\n'
                'Am\nАлые паруса. Плюс Грей.\n'
                'Dm      G                C\n'
                'Алые паруса, паруса. Ассоль + Грей = \u{2665}\n\n'
                'C\nИ вечером поздним,\n'
                'Am\nКогда все уснули,\n'
                'Dm\nНа небе зажглись\n'
                'G\nМиллионы огней.\n'
                'C\nИ этой же ночью\n'
                'Am\nСлучилось чудо.\n'
                'Dm\nТот парень с девчонкой\n'
                'G\nВлюбились друг в друга.\n'
                '\nПрипев:\n'
                'C\nАлые паруса. Ассоль.\n'
                'Am\nАлые паруса. Плюс Грей.\n'
                'Dm      G                C\n'
                'Алые паруса, паруса. Ассоль + Грей = \u{2665}\n'
                'C\nАлые паруса. Ассоль.\n'
                'Am\nАлые паруса. Плюс Грей.\n'
                'Dm      G                C\n'
                'Алые паруса, паруса. Ассоль + Грей = \u{2665}\n'
    ),
    Song(
      title: "До скорой встречи",
      singer: "Звери",
      content: '\n____________Dm\n'
              'Вчерашний вечер\n'
              '_________ G ______________ Am\n'
              'Из подворотни, на все согласен\n'
              '_____________ Dm\n'
              'Спасаться нечем\n'
              '______ G _________ Am\n'
              'И я охотник и я опасен\n'
              '__________ Dm\n'
              'И очень скоро\n'
              'G _____________ Am __ F\n'
              'Еще минута и доверяю\n'
              '_________ Dm __________ F\n' 
              'И мухоморы, конечно круто\n'
              '_________ E\n'
              'Но тоже вряд ли\n\n'
              'Припев: x2\n'
              '______ F _______________ Dm\n'
              'До скорой встречи, до скорой встречи,\n' 
              '__G ______________ C\n'          
              'Моя любовь к тебе навечно\n'   
              '__________ F _________ Dm ______E\n'    
              'До скорой встречи, До скорой встречи\n' 
              '\n____________Dm\n'
              'Тычинка-пестик\n'
              '_________ G _______________ Am\n'
              'Любовь научит, совсем не пошло,\n'
              '____________ Dm\n'
              'Когда мы вместе\n'
              '______ G _________ Am\n'
              'Никто не круче, но это в прошлом\n'
              '__________ Dm\n'
              'И я не знаю,\n'
              'G _____________ Am __ F\n'
              'И я теряю вчерашний вечер,\n'
              '_________ Dm __________ F\n' 
              'Моя смешная, моя сквозная,\n'
              '___________ E\n'
              'До скорой встречи\n\n'
              'Припев: x2\n'
              '______ F _______________ Dm\n'
              'До скорой встречи, до скорой встречи,\n' 
              '__G ______________ C\n'          
              'Моя любовь к тебе навечно\n'   
              '__________ F _________ Dm ______E\n'    
              'До скорой встречи, До скорой встречи\n' 
              '\n____________Dm\n'
              'Моя love-story,\n'
              '_________ G _______________ Am\n'
              'Короче ночи, смотрю на время,\n'
              '____________ Dm\n'
              'И беспонтово \n'
              '______ G _________ Am\n'
              'Мотает счетчик, такси на север\n'
              '__________ Dm\n'
              'И я не знаю,\n'
              'G _____________ Am __ F\n'
              'И я теряю вчерашний вечер,\n'
              '_________ Dm _________ F\n' 
              'Моя смешная, моя родная,\n'
              '___________ E\n'
              'До скорой встречи\n\n'
              'Припев: x2\n'
              '______ F _______________ Dm\n'
              'До скорой встречи, до скорой встречи,\n' 
              '__G ______________ C\n'          
              'Моя любовь к тебе навечно\n'   
              '__________ F _________ Dm ______E\n'    
              'До скорой встречи, До скорой встречи\n' 
    ),
    Song(
      title: "Будь готов",
      singer: "",
      content:  '\nAm________________________________ F\n'
                'Нас немного пока, но мечтаем мы все об одном:\n'
                'Dm___________________________ C _______ G\n'
                'Этот мир изменить, озаряя душевным огнем.\n'
                'Am__________________________________ F\n'
                'Искру мысли вдохнуть в сочетание стареньких слов,\n'
                'Dm____________________________________ C ________ G\n'
                'Чтобы снова звенел над страной наш девиз: « Будь готов!»\n'
                '\nПрипев:\n' 
                'Dm ________________ G _____________ C\n'   
                'Будь готов с нами вместе идти до конца,\n' 
                '_______________ Am _________________ Dm\n'   
                'Будь готов удержаться под градом свинца,\n' 
                '____________________ G _________________ C\n'    
                'Будь готов стать сторонником лучших идей,\n' 
                '__________________ E7 _____________ Am\n'    
                'Будь готов воспитать настоящих людей.\n'
                '\nAm_______________________________ F\n'
                'По ухабам истории путь где-то - вверх, где-то - вниз.\n'
                'Dm_______________________________ C _________ G\n'
                'Как народная мудрость гласит: «На ошибках учись»!\n'
                'Am__________________________________ F\n'
                'Нелегко нам сегодня добиться реальных побед,\n'
                'Dm________________________________ C _______ G\n'
                'Но гораздо трудней в одиночку бороться тебе.\n'
                '\nПрипев:\n' 
                'Dm ________________ G _____________ C\n'   
                'Будь готов с нами вместе идти до конца,\n' 
                '_______________ Am _________________ Dm\n'   
                'Будь готов удержаться под градом свинца,\n' 
                '____________________ G _________________ C\n'    
                'Будь готов стать сторонником лучших идей,\n' 
                '__________________ E7 _____________ Am\n'    
                'Будь готов воспитать настоящих людей.\n'
                '\nAm__________________________________ F\n'
                'Мы не "Ласковый май", мы, скорее, суровый февраль!\n'
                'Dm_______________________________ C _________ G\n'
                'Шутки в сторону, видите - здесь закаляется сталь!\n'
                'Am___________________________________ F\n'
                'Через тернии - к звездам, нелегким, но верным путем,\n'
                'Dm_______________________________________ C _______ G\n'
                'Только за руки взявшись, мы к цели заветной придем!\n'
                '\nПрипев:\n' 
                'Dm ________________ G _____________ C\n'   
                'Будь готов с нами вместе идти до конца,\n' 
                '_______________ Am _________________ Dm\n'   
                'Будь готов удержаться под градом свинца,\n' 
                '____________________ G _________________ C\n'    
                'Будь готов стать сторонником лучших идей,\n' 
                '__________________ E7 _____________ Am\n'    
                'Будь готов воспитать настоящих людей.\n'
    ),
    // Song(
    //   title: "Районы-кварталы",
    //   singer: "Звери",
    //   content: '\nНас немного пока, но мечтаем мы все об одном:\nЭтот мир изменить, озаряя душевным огнем.',
    // ),
    // Song(
    //   title: "Звезда по имени Солнце",
    //   singer: "Кино",
    //   content: 'Вступление:   Dm7     Am\n         Am\nБелый снег, серый лед,\n                 C\nНа растрескавшейся земле.',
    // ),
    Song(
      title: "Все острова",
      singer: "Элизиум",
      content: "\n Вступление:  C  G  Am  Em  F  C  G\n C               G       Am                Em\nОни мечтали, к волнам спускали\n F                   C                                G\nЗа бригом бриг, не покладая рук\n C                G    Am              Em\nИ уплывали, хотя не знали\n F                    C                          G\nКогда увидят вновь своих подруг\n\nПрипев:\n                C               G                    Am\nВсе острова - давным, давно открыты\nF   G       C                 G         Am      F\nИ даже те - где тесно и вдвоем\n   G          C          G                    Am          F\nНо, все то, что мы знаем, - ни чего не значит\n       C                G                Am             F\nВсе то, что мы знаем, - ни чего не значит\n     G                                    C   G\nДля нас - мы новый найдем!\n\n C                G    Am               Em\nОни сумели, пройти все мели\n F                   C                               G\nИ слишком мал для них был шар земной\n C                G     Am                     Em\nВ шторма и штили, они входили\n F                     C                             G\nВ любую гавань, как к себе домой\n\n C                 G    Am               Em\nКогда сэр Дрейк уплывал, покидая свой причал\n F                    C                              G\nКем вернется он назад, - вряд ли кто б тогда сказал\n C                 G   Am               Em\nДарвин, и Магеллан, слыша голос дальних стран\n F                    C                             G\nЗабывали те слова, что твердил капеллан.\n\n C               G   Am             Em\nИх волны звали, они узнали\n F                   C                      G\nУ слез и моря одинаков вкус\n C                 G    Am                  Em\nКто испугался, навек остался\n F                   C                     G\nСреди акул, кораллов и медуз\n\nПрипев:\n                C               G                    Am\nВсе острова - давным, давно открыты\nF   G       C                 G         Am      F\nИ даже те - где тесно и вдвоем\n   G          C          G                    Am          F\nНо, все то, что мы знаем, - ни чего не значит\n       C                G                Am             F\nВсе то, что мы знаем, - ни чего не значит\n     G                                    C   G\nДля нас - мы новый найдем!\n                   C  G\nМы новый найдем!\n",
    ),
    Song(
      title: "Перевал",
      singer: "Юрий Визбор",
      content: '\nAm ________________ Dm\n'
              'Просто нечего нам больше терять,\n'
              'E  _________________________ Am\n'
              'Все нам вспомнится на страшном суде.\n'
              'Am _____________________ Dm\n'
              'Эта ночь легла, как тот перевал,\n'
              'G7 ________________ C\n'
              'За которым исполненье надежд.\n'
              'A7 _________________ Dm\n'
              'Видно, прожитое прожито зря - не зря,\n'
              'G7 __________________ C\n'
              'Но не в этом, понимаешь ли, соль.\n'
              'Am _____________________ Dm\n'
              'Слышишь - падают дожди октября,\n'
              'E  ________________________ Am\n'
              'Видишь - старый дом стоит средь лесов.\n'
              '\nAm _________________ Dm\n'
              'Мы затопим в доме печь, в доме печь,\n'
              'E  _________________________ Am\n'
              'Мы гитару позовем со стены.\n'
              'Am _____________________ Dm\n'
              'Просто нечего нам больше беречь,\n'
              'G7 ________________ C\n'
              'Ведь за нами все мосты сожжены.\n'
              'A7 _________________ Dm\n'
              'Все мосты, все перекрестки дорог,\n'
              'G7 __________________ C\n'
              'Все зашептанные тайны в ночи.\n'
              'Am _____________________ Dm\n'
              'Каждый сделал все, что смог, все, что смог,\n'
              'E  _______________________ Am\n'
              'Но об этом помолчим, помолчим...\n'
              '\nAm _________________ Dm\n'
              'И луна взойдет оплывшей свечой,\n'
              'E  _________________________ Am\n'
              'Ставни скрипнут на ветру, на ветру.\n'
              'Am _____________________ Dm\n'
              'Ах, как я тебя люблю горячо,\n'
              'G7 ________________ C\n'
              'Годы это не сотрут, не сотрут.\n'
              'A7 _________________ Dm\n'
              'Мы оставшихся друзей созовем,\n'
              'G7 __________________ C\n'
              'Мы набьем картошкой старый рюкзак,\n'
              'Am _____________________ Dm\n'
              'Люди спросят, что за шум, что за гам,\n'
              'E  _______________________ Am\n'
              'Мы ответим - просто так, просто так.\n'
              '\nAm _________________ Dm\n'
              'Просто так идут дожди октября\n'
              'E  _________________________ Am\n'
              'И потеряны от счастья ключи\n'
              'Am _____________________ Dm\n'
              'Это все конечно мне, конечно мне,\n'
              'G7 ________________ C\n'
              'Но об этом помолчим, помолчи...\n'
              'A7 _________________ Dm\n'
              'Просто прожитое прожито зря - не зря\n'
              'G7 __________________ C\n'
              'Но не в этом, понимаешь ли, соль.\n'
              'Am _____________________ Dm\n'
              'Слышишь - падают дожди октября,\n'
              'E  ________________________ Am\n'
              'Видишь - старый дом стоит средь лесов.\n'
    ),
  ];
}