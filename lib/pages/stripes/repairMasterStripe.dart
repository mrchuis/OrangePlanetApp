import 'package:flutter/material.dart';

class RepairMasterStripe extends StatelessWidget {
  static const String routeName = "/Мастер ремонта снаряжения";

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
                          child: ExpansionTile(
                            title: Text(
                              "Введение",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Text(
                                      "Мастер ремонта снаряжения (реммастер) – это умелые руки и Самоделкин в одном лице. Кто, как не он, поможет залатать рюкзак и исправить заевшую «молнию»? Реммастер, кроме стандартного походного ремонтного набора, имеет еще под рукой  и личный небольшой ремнабор (нитки, иголки, пару пуговиц разного размера, пару заплаток разного материала, изоленту, ножницы, быстровысыхающий клей).",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ), 
                                  ]
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                        elevation: 2.0,
                        child: ExpansionTile(
                          title: Text(
                            "Реммастер должен",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text(
                                    "До похода:",
                                    style: Theme.of(context).textTheme.headline6,       
                                    textAlign: TextAlign.center,                        
                                  ),
                                  Text(
                                    "\n1. Составить список ремнабора для похода с учетом возможных поломок и порчи имеющегося снаряжения. \n"
                                    "\n2. Укомплектовать и упаковать ремнабор.\n"
                                    "\n3.	Пройти инструктаж по ремонту снаряжения.\n",
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Text(
                                    "В походе:",
                                    style: Theme.of(context).textTheme.headline6, 
                                    textAlign: TextAlign.center, 
                                  ),
                                  Text(
                                    "\n1.	По требованию участников выдавать и собирать необходимые инструменты для ремонта личного. \n"
                                    "\n2.	Следить за сохранностью ремнабора, не допускать потери инструмента. \n"
                                    "\n3.	Ремонтировать групповое снаряжение. \n"
                                    "\n4.	Помогать ремонтировать личное снаряжение. \n",
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ), 
                                  Text(
                                    "После похода:",
                                    style: Theme.of(context).textTheme.headline6, 
                                    textAlign: TextAlign.center, 
                                  ),
                                  Text(
                                    "\n1.	Обеспечить сохранность ремнабора после похода.",
                                    style: Theme.of(context).textTheme.bodyText2,
                                  ), 
                                ]
                              ),
                            ),
                          ],
                        ),
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