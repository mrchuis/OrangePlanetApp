import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/games/components/games.dart';

class DetailsScreen extends StatelessWidget {
  final Games game;

  const DetailsScreen({Key key, this.game}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange[300],
      // appBar: AppBar(
      //   title: Text(game.title),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 50.0,
            floating: true,
            pinned: false,
            flexibleSpace: new FlexibleSpaceBar(
              title: Text(game.title),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (content, index) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(3, 5, 3, 3),
                  child: Column(
                    children: <Widget>[
                      Card(
                          elevation: 2.0,
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    game.description,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                    //Theme.of(context).textTheme.headline5,
                                  ),
                                  // Text(
                                  //   "\nНе навреди природе ни живой, ни мертвой.\n"
                                  //   "\nСлабому телом подставь плечо, слабому духом — веры в него.\n"
                                  //   "\nЗакаляй тело и дух свой и помни: мир вокруг тебя будет таким, каким станешь ты сам.",
                                  //   style: Theme.of(context).textTheme.bodyText2,
                                  // ),
                                ],
                              ))),
                    ],
                  ),
                ),
              ),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
