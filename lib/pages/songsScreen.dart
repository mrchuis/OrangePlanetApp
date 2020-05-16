import 'dart:async';

import 'package:flutter/material.dart';

//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
      content: 'Вступление:   Dm7     Am\n         Am\nБелый снег, серый лед,\n                 C\nНа растрескавшейся земле.',
    ),
    Song(
      title: "Все острова",
      singer: "Элизиум",
      content: "\n Вступление:  C  G  Am  Em  F  C  G\n C               G       Am                Em\nОни мечтали, к волнам спускали\n F                   C                                G\nЗа бригом бриг, не покладая рук\n C                G    Am              Em\nИ уплывали, хотя не знали\n F                    C                          G\nКогда увидят вновь своих подруг\n\nПрипев:\n                C               G                    Am\nВсе острова - давным, давно открыты\nF   G       C                 G         Am      F\nИ даже те - где тесно и вдвоем\n   G          C          G                    Am          F\nНо, все то, что мы знаем, - ни чего не значит\n       C                G                Am             F\nВсе то, что мы знаем, - ни чего не значит\n     G                                    C   G\nДля нас - мы новый найдем!\n\n C                G    Am               Em\nОни сумели, пройти все мели\n F                   C                               G\nИ слишком мал для них был шар земной\n C                G     Am                     Em\nВ шторма и штили, они входили\n F                     C                             G\nВ любую гавань, как к себе домой\n\n C                 G    Am               Em\nКогда сэр Дрейк уплывал, покидая свой причал\n F                    C                              G\nКем вернется он назад, - вряд ли кто б тогда сказал\n C                 G   Am               Em\nДарвин, и Магеллан, слыша голос дальних стран\n F                    C                             G\nЗабывали те слова, что твердил капеллан.\n\n C               G   Am             Em\nИх волны звали, они узнали\n F                   C                      G\nУ слез и моря одинаков вкус\n C                 G    Am                  Em\nКто испугался, навек остался\n F                   C                     G\nСреди акул, кораллов и медуз\n\nПрипев:\n                C               G                    Am\nВсе острова - давным, давно открыты\nF   G       C                 G         Am      F\nИ даже те - где тесно и вдвоем\n   G          C          G                    Am          F\nНо, все то, что мы знаем, - ни чего не значит\n       C                G                Am             F\nВсе то, что мы знаем, - ни чего не значит\n     G                                    C   G\nДля нас - мы новый найдем!\n                   C  G\nМы новый найдем!",
    ),
    Song(
      title: "Перевал",
      singer: "Юрий Визбор",
      content: "Am                       Dm\nПросто нечего нам больше терять,\nE7                                      Am\nВсе нам вспомнится на страшном суде.\nAm                   Dm\nЭта ночь легла, как тот перевал,\nG7               C\nЗа которым исполненье надежд.\nA7                Dm\nВидно, прожитое прожито зря,\nG7                 C\nНо не в этом, понимаешь ли, соль.\nAm                   Dm\nСлышишь - падают дожди октября,\nE7                      Am\nВидишь - старый дом стоит средь лесов.",
    ),
  ];
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
    final spans = _getSpans(widget.song.content, style);

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText2.copyWith(),
        children: spans,
      ),
    );
  }

  List<TextSpan> _getSpans(String text, TextStyle style) {
    
    List<TextSpan> spans = [];
    int spanBoundary = 0;

    do {
      // look for the next match
      final startIndex = text.indexOf(new RegExp(r"Am|A7|A|Bm|B7|B|C7|Cm|C|Dm|D7|D|Em|E7|E|Fm|F7|F|Gm|G7|G"), spanBoundary);
      if (startIndex == -1) {
        spans.add(TextSpan(text: text.substring(spanBoundary)));
        break;
      }
      // add any unstyled text before the next match
      spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
      // style the matched text
      final endIndex = startIndex + 2;
      final spanText = text.substring(startIndex, endIndex);
      spans.add(TextSpan(text: spanText, style:style));
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
