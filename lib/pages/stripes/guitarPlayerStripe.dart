import 'package:flutter/material.dart';

class GuitarPlayerStripe extends StatelessWidget {
  static const String routeName = "/Гитарист";

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
                                      "Теория:",
                                      style: Theme.of(context).textTheme.headline6,       
                                      textAlign: TextAlign.center,                        
                                    ),
                                    Text(
                                      "\n1. Знать устройство акустической гитары, её разновидности и различия.\n"
                                      "\n2. Знать 2 лагерных гимна наизусть.\n"
                                      "\n3. Знать стандартный гитарный строй Ми.\n"
                                      "\n4. Знать что должно входить в стандартный набор гитариста-любителя.\n"
                                      "\n5. Знать правила хранения и транспортировки гитары.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ), 
                                    Text(
                                      "Практика:",
                                      style: Theme.of(context).textTheme.headline6,       
                                      textAlign: TextAlign.center,                        
                                    ),
                                    Text(
                                      "\n1. Знать и уметь ставить основные аккорды.\n"
                                      "\n2. Знать и уметь играть основные гитарные бои и переборы.\n"
                                      "\n3. Уметь играть медиатором.\n"
                                      "\n4. Уметь играть стоя.\n"
                                      "\n5. Уметь настраивать гитару по тюнеру за 3 минуты.\n"
                                      "\n6. Сдать 2 лагерных гимна под гитару + 2 любые песни боем + 2 любые перебором. Необходимо при этом хотя бы проговаривать слова песни.\n"
                                      "\n7. Добавить песню с аккордами в песенник Оранжевой планеты.\n"
                                      "\n8. Выступить с гитарой на лагерном мероприятии.",
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
                              "Конструкция гитары",
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
                                      "Гитара представляет собой корпус с длинной шейкой, называемой «грифом». Лицевая, рабочая сторона грифа — плоская либо слегка выпуклая. Вдоль неё параллельно натянуты струны, закреплённые одним концом на подставке корпуса, другим — на колковой коробке на окончании грифа. На подставке корпуса струны привязываются или крепятся неподвижно при помощи барашков, на головке грифа с помощью колкового механизма, позволяющего регулировать натяжение струн. Струна лежит на двух порожках, нижнем и верхнем, расстояние между ними, определяющее максимальную длину рабочей части струны, является мензурой гитары. Верхний порожек находится в верхней части грифа, около головки. Нижний устанавливается на подставке на корпусе гитары.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Image.asset(
                                      'assets/images/guitar/guitar.png',
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "\nCтандартный гитарный строй:",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Image.asset(
                                      'assets/images/guitar/guitar2.png',
                                      alignment: Alignment.topCenter,
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
                              "Классификация акустических гитар",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: [
                                          TextSpan(
                                            text: "1. Классическая гитара ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: " имеет ряд особенностей:\n"
                                            "\n⦁ Используются струны из синтетики: нейлона, реже — карбона. В очень редких случаях — струны из кишок животных (жильные струны).\n"
                                            "\n⦁ Гриф гитары более широкий, что позволяет легче прижать нужную ноту, но с другой стороны, требует бо́льших усилий при игре. \n"
                                            "\n⦁ У классических гитар между головкой грифа и корпусом гитары расположено только 12 ладов, а не 14, как у остальных.\n",
                                          ),
                                          TextSpan(
                                            text: "\n2. Фолк-гитара  ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "— акустическая гитара, напоминающая классическую, но приспособленная к использованию металлических струн.\n",
                                          ),
                                          TextSpan(
                                            text: "\n3. Дредноут (вестерн) ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "— гитара с металлическими струнами и увеличенным корпусом характерной «прямоугольной» формы. Обладает повышенной по сравнению с классическим корпусом громкостью и преобладанием низкочастотных компонентов в тембре.\n",
                                          ),
                                          TextSpan(
                                            text: "\n4. Джамбо ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "— инструмент с металлическими струнами, большим корпусом, плоской верхней декой и округлыми линиями обвода.\n",
                                          ),
                                        ]
                                      )
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
                              "Основные приемы игры на гитаре",
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
                                      "1. \n",
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
                              "Основные аксессуары для гитары",
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
                                      "1. Медиатор — небольшая пластинка (из пластмассы, кости, металла) толщиной 0,1—1 (иногда до 3) мм, используется для звукоизвлечения.\n"
                                      "\n2. Гитарный ремень — ремень из прочного материала (кожа или синтетика), позволяющий гитаристу удобно исполнять композиции стоя.\n"
                                      "\n3. Тюнер — электронное устройство, упрощающее настройку гитары путём визуальной индикации точности настройки каждой струны.\n"
                                      "\n4. Шестигранный ключ — т. н. «анкерный», для регулировки прогиба грифа (и, соответственно, расстояния между струнами и порожками ладов) у многих современных гитар путём ослабления-натяжения анкерного стержня. Такой же ключ, но меньшего размера используется для непосредственной и точной регулировки зазора между струной и грифом на некоторых моделях электрогитар.\n"
                                      "\n5. Вертушка — приспособление, облегчающее намотку струн; представляет собой насадку-удлинитель ручки колкового механизма.\n"
                                      "\n6. Чехол для удобной и безопасной транспортировки инструмента, а также его хранения.",
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
                              "Полезные советы по хранению гитары",
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
                                      "1. Относительная влажность воздуха должна составлять 40-60%, температура 10-25 С.\n"
                                      "\n2. Держать гитару в комнате не в углу, а вдоль стены. В углах воздух более влажный.\n"
                                      "\n3. Не вешать гитару под потолок. Со школы все мы помним, что сверху в комнате воздух более теплый и сухой.\n"
                                      "\n4. Хранить гитару на расстоянии не менее 1-1,5 м от батарей и обогревателей во избежание пересушивания дерева.\n"
                                      "\n5. Не держать гитару под воздействием прямых солнечных лучей даже зимой, потому что даже будучи отраженными от блестящих поверхностей, они могут вызывать излишнее напряжение древесины, что может привести к растрескиванию лака.\n"
                                      "\n6. При длительном хранении ослаблять натяжение струн во избежание прогиба грифа.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Divider(
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "\nТранспортировать гитару рекомендуется осторожно, избегая ударов, намокания и нагревания. Зимой гитару нужно переносить в утепленном чехле, чтобы избежать сильного охлаждения корпуса. Любой перепад температуры сказывается на дереве тем или иным образом.\n"
                                      "\nСтоит обратить внимание на хранение гитары в полевых условиях. Необходимо поддерживать оптимальную температуру и избегать намокания. Располагать гитару близко к костру крайне не рекомендуется. После использования убирать в чехол. Ночью хранить в палатке.",
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