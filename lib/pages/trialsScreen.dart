import 'package:flutter/material.dart';

class Trials extends StatelessWidget {
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
                title: Text('Законы и Заповеди'),
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
                                "Заповеди следопыта:",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                "\nНе навреди природе ни живой, ни мертвой.\n"
                                "\nСлабому телом подставь плечо, слабому духом — веры в него.\n"
                                "\nЗакаляй тело и дух свой и помни: мир вокруг тебя будет таким, каким станешь ты сам.",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          )
                        )
                      ),
                      Card(
                        elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                "Законы следопыта:",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                "\nСледопыт верен Богу, предан Родине и семье.\n"
                                "\nСледопыт брат всякому другому следопыту.\n"
                                "\nСледопыт выполняет указания руководителей.\n"
                                "\nСледопыт вежлив, услужлив и скромен.\n"
                                "\nСледопыт трудолюбив и настойчив.\n"
                                "\nСледопыт никогда не падает духом.\n"
                                "\nСледопыт чист в мыслях, словах и делах.\n"
                                "\nСледопыт в ответе за свои поступки.\n"
                                "\nСлудопыт - пример для всех.",
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          )
                        )
                      )
                    ],
                  ),
                )
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
