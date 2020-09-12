import 'package:flutter/material.dart';

class ChroniclerStripe extends StatelessWidget {
  static const String routeName = "/Летописец";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 50.0,
              floating: true,
              pinned: false,
              flexibleSpace: new FlexibleSpaceBar(
                title: Text(routeName.replaceFirst(new RegExp(r'/'), '')),
              ),
            ),
            SliverList(
              delegate:SliverChildBuilderDelegate(
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
                                  "Летописец должен",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\nНа смене: ",
                                  style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\n1. Вести дневник отрядной жизни, давать оценку событиям, отношение к ним отряда. Уметь украсить текст рисунками, вырезками. Писать четко и красиво.\n",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  "До похода: ",
                                  style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\n1. Продумать ведение летописи.\n"
                                  "\n2. Обеспечить необходимые материалы: блокнот, ручки, карандаши и пр.\n",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  "В походе: ",
                                  style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\n1. Организовать ведение летописи.\n"
                                  "\n2. Обеспечить всем необходимым участников, ведущих летопись.\n",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  "После похода: ",
                                  style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\n1. Выпустить стенгазету по итогам похода.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
                          )
                        ),
                      ],
                    )
                  ),
                ),
                childCount: 1,
              )
            ),
          ],
      ),
    );
  }
}