import 'package:flutter/material.dart';
import 'package:orange_planet_app/components/categories.dart';
import 'package:orange_planet_app/components/games.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Categories(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color:Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )
            ),
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
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: fiveMinutesGames.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Games game = fiveMinutesGames[index];
                    return Card(
                      child: ListTile(
                        title: Text(
                          game.title,
                        ),
                        onTap: () {
                          return;
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
