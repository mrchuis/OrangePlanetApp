import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/games/gamesScreen.dart';
import 'package:orange_planet_app/screens/songs/songs_list_screen.dart';
import 'package:orange_planet_app/screens/home/components/home_header.dart';
import 'package:orange_planet_app/screens/home/components/pathfinder.dart';
import 'package:orange_planet_app/screens/home/components/vertical_card.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              //height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:280),
                    decoration: BoxDecoration(
                      color: Colors.white, //Color(0xFFF1EFF1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 25),
                          Text(
                            "Следопытство",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(height: 15),
                          Pathfinder(),
                          SizedBox(height: 25),
                          Text(
                            "Развлечения",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(height: 15),
                          VerticalCard(
                            image: 'assets/icons/song1.png',
                            title: "Песни",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Songs();
                                }),
                              );
                            },
                          ),
                          SizedBox(height: 15),
                          VerticalCard(
                            image: "assets/icons/games1.png",
                            title: "Игры",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Games();
                                }),
                              );
                            },
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  HomeHeader(),
                ]
              ),
            )
            //HomeHeader(size: size),
          ],
        ),
      )
    );
  }
}
