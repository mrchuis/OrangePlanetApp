import 'package:flutter/material.dart';

class ClimberStripe extends StatelessWidget {
  static const String routeName = "/Скалолаз";

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
                              "Требования к нашивке",
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
                                      "1.	К сдаче на скалолаза допускаются те, у кого уже есть нашивка узлового.\n"
                                      "\n2.	Знать технику безопасности при нахождении на скалах, при работе с веревками, при страховке, при подъеме и спуске.\n"
                                      "\n3.	Знать и уметь использовать специальное снаряжение (различные веревки, спусковые и страховочные устройства, карабины, обвязки).\n"
                                      "\n4.	Продемонстрировать инструктору технику скалолазания-восхождения по скальной стенке.",
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
                              "Техника безопасности на скале",
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
                                      "⦁ Любая страховка осуществляется только подготовленным участником, имеющим опыт и навык страховки.\n"
                                      "\n⦁ Передвижение по скале возможно только с соблюдением правила трех точек опоры.\n"
                                      "\n⦁ Страховочное снаряжение должно быть проверено. Оно должно выдерживать нагрузки, превышающие возможные в данном случае.\n"
                                      "\n⦁ Не разрешается использовать старые верёвки, верёвки с надрывами оплётки, с намертво затянувшимися узлами или с подплавленной оплёткой. Также, если верёвка была перебита, долгое время находилась на открытом солнце или подверглась большему количеству рывков, чем рассчитана.\n"
                                      "\n⦁ Не допускается использование карабинов с заедающей или не работающей муфтой.\n"
                                      "\n⦁ Не допускается использование спусковых устройств и карабинов с протёртыми частями более 1 мм.\n"
                                      "\n⦁ Не разрешается использование обвязок с расползшимися швами, с надрывами, с сильно протёртыми основными петлями.",
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
                              "Категорически запрещается",
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
                                      "⦁ Работать на любой скальной поверхности в одиночку.\n"
                                      "\n⦁ Отвлекать страхующего во время работы.\n"
                                      "\n⦁ Разворачиваться спиной к скале.\n"
                                      "\n⦁ Держаться за веревку в местах соприкосновения ее с поверхностью скалы.\n"
                                      "\n⦁ Использовать при страховке саморазвязывающиеся узлы.\n"
                                      "\n⦁ Нагружать страховочную веревку (хвататься за нее).\n"
                                      "\n⦁ При отсутствии умений спускаться прыжками – упираться в скалу коленями, локтями, головой, садиться, находясь на маршруте.",
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