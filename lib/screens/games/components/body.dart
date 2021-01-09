import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/games/components/details_screen.dart';
import 'package:orange_planet_app/screens/games/components/games.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
  static const List<String> categories = [
    "Пятиминутки",
    "Подвижные",
    "На сплочение",
    "На знакомство",
    "С залом",
    "В автобусе",
  ];

  List<Games> games = fiveMinutesGames;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60.0,
          color: Theme.of(context).primaryColor,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                // TODO limiting games for free version
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: games.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Games game = games[index];
                    if (index <= GAMES_LIMIT) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            game.title,
                          ),
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                            game: game,
                                          )));
                              //Navigator.of(context).pushNamed(routeNames[index]);
                            });
                          },
                        ),
                      );
                    } else {
                      return Card(
                        child: ListTile(
                          trailing: Icon(Icons.lock_outlined),
                          title: Text(
                            game.title,
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
                                              'В бесплатной версии ограничен список игр и нашивок.'),
                                          Text(
                                              '\nПолный доступ ко всем функциям приложения доступен в pro-версии за 99 рублей.'),
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
                            // buy full version
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          if (selectedIndex == 0) {
            games = fiveMinutesGames;
          }
          if (selectedIndex == 1) {
            games = outdoorGames;
          }
          if (selectedIndex == 2) {
            games = trustGames;
          }
          if (selectedIndex == 3) {
            games = datingGames;
          }
          if (selectedIndex == 4) {
            games = spectatorsGames;
          }
          if (selectedIndex == 5) {
            games = busGames;
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //fontSize: 22.0,
                color: selectedIndex == index ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
