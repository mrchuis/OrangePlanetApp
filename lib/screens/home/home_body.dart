import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:orange_planet_app/screens/games/gamesScreen.dart';
import 'package:orange_planet_app/screens/laws/laws.dart';
import 'package:orange_planet_app/screens/songs/songs_list_screen.dart';
import 'package:orange_planet_app/screens/home/components/home_header.dart';
import 'package:orange_planet_app/screens/home/components/horizontal_card.dart';
import 'package:orange_planet_app/screens/home/components/vertical_card.dart';
import 'package:orange_planet_app/screens/stripes/stripesScreen.dart';
import 'package:orange_planet_app/screens/trials/trialsScreen.dart';
import 'package:orange_planet_app/size_config.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF035AA6),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            HomeHeader(size: size),
            Container(
              //height: size.height * 0.62,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF1EFF1),
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
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: <Widget>[
                    //     HorizontalCard(
                    //       icon: Icons.book,
                    //       title: "Законы и\nЗаповеди",
                    //       press: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return Laws();
                    //           }),
                    //         );
                    //       },
                    //     ),
                    //     HorizontalCard(
                    //       icon: MdiIcons.cards,
                    //       title: "\nНашивки",
                    //       press: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return Stripes();
                    //           }),
                    //         );
                    //       },
                    //     ),
                    //     HorizontalCard(
                    //       icon: MdiIcons.guitarAcoustic,
                    //       title: "\nИспытания",
                    //       press: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(builder: (context) {
                    //             return Trials();
                    //           }),
                    //         );
                    //       },
                    //     ),
                    //   ],
                    // ),
                    SizedBox(height: 25),
                    Text(
                      "Развлечения",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 15),
                    VerticalCard(
                          image: 'icon/icon.png',
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
                          image: 'icon/icon.png',
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
                        SizedBox(height: 5),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class Pathfinder extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> pathfinders = [
      {"icon":"assets/icons/elka.png", "text": "Законы и заповеди"},
      {"icon":"assets/icons/fire.png", "text": "Нашивки"},
      {"icon":"assets/icons/palatka.png", "text": "Испытания"},
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(pathfinders.length, 
          (index) => CategoryCard(
            icon: pathfinders[index]["icon"],
            text: pathfinders[index]["text"],
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Trials();
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key, this.icon, this.text, this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 80,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  child: Image.asset(icon),
                ),
              )
            ),
            const SizedBox(height:5),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}