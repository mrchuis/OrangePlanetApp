import 'package:flutter/material.dart';

class KnitterStripe extends StatelessWidget {
  static const String routeName = "/Узловой";

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
                                      "1. Знать не менее 10 узлов разного назначения и способы их применения.\n"
                                      "\n2. Знать типы веревок (по материалу, нагрузке) и их применение.\n"
                                      "\n3. Уметь создать кухонный патент из веревки и подручного материала без использования инструментов.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Веревки и узлы",
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
                                      "По своим свойствам веревки делятся на динамические и статические. Узлы – это способы соединения веревок. Завязанные узлы должны быть затянуты и иметь правильный рисунок. На свободных концах веревки следует делать “контрольки”: они будут препятствовать проскальзыванию веревки и самопроизвольному развязыванию узла.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Узлы для соединения веревок одинакового диаметра",
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
                                      "\"Прямой\" узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),
                                    Text(
                                      "Узел легко вяжется. Под нагрузкой сильно затягивается. Самопроизвольно развязывается – “ползёт”. Ходовые концы должны быть длиной 15—20 см, чтобы можно было завязать контрольные узлы.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\"Ткацкий\" (\"Рыбацкий\") узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),
                                    Image.asset(
                                      'assets/images/knots/tkackiy.png',
                                      height: 190,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "При большой нагрузке сильно затягивается. “Ползет” при переменных нагрузках.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Грейпвайн\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),
                                    Image.asset(
                                      'assets/images/knots/greipvain.png',
                                      height: 260,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Завязывается как бы двойной контрольный узел с двух сторон. Используется для крепления страховки.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Встречный\" узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),
                                    Image.asset(
                                      'assets/images/knots/vstrechniy.png',
                                      height: 200,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "После завязывания простого узла, необходимо второй веревкой “пойти” навстречу ходовому концу первой веревки, то есть полностью повторить узел, чтобы он получился двойным. “Не ползет”. Используется для соединения лент, вязания различных петель оттяжек.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Узлы для соединения веревок разного диаметра",
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
                                      "\"Брамшкотовый\" узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),
                                    Image.asset(
                                      'assets/images/knots/bramshkot.png',
                                      height: 160,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Петля – из более толстой веревки, а ходовым концом тонкой обкручиваем ее как показано на рисунке. Незатягивающийся узел. Должен быть хорошо расправлен.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Академический\" узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),
                                    Image.asset(
                                      'assets/images/knots/academicheskiy.png',
                                      height: 180,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Петля также более толстой веревкой. При большой нагрузке не так сильно затягивается, как “прямой” узел, легче развязывать.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Узлы для страховки (незатягивающиеся петли)",
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
                                      "\"Простой проводник\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),                 
                                    Image.asset(
                                      'assets/images/knots/provodnik.png',
                                      height: 190,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Вяжется одной веревкой, которая складывается вдвое и на конце ее завязывается простой узел, чтобы получилась петля. Сильно ослабляет веревку. Трудно развязывается. Для облегчения развязывания используют клинышек.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Восьмерка\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),                 
                                    Image.asset(
                                      'assets/images/knots/vosmerka.png',
                                      height: 190,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Большая прочность на разрыв. Легче развязывается после снятия нагрузки.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Серединный австрийский проводник\" (\"пчелка\")",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),                 
                                    Image.asset(
                                      'assets/images/knots/pchelka.png',
                                      height: 260,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Веревка берется за середину, затем поворотом на 360° из нее складывается восьмерка (а), вершина которой опускается вниз и протаскивается (б), чтобы вышла петля. Концы веревки растянуть в разные стороны (в)."
                                      "\n\nМожно привязываться на конце веревки и в середине, перевязать перетершийся участок веревки, организовать промежуточную точку опоры. Не скользит по веревке. Нагрузка может быть в любом направлении. Меньше ослабляет прочность веревки, чем “проводник” и “восьмерка”.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Двойной проводник\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),                 
                                    Image.asset(
                                      'assets/images/knots/2provodnik.png',
                                      height: 130,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Необходимо следить, чтобы при завязывании узла не было перехлеста веревок. Используется для спасательных работ.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Узлы для привязывания веревок к опоре",
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
                                      "\"Удавка\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/udavka.png',
                                      height: 150,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Узел вяжется одной веревкой вокруг опоры. Опора обносится сначала ходовым концом, который служит для прикрепления веревки, а затем ее рабочим концом, которым непосредственно пользуется турист (а). Далее ходовым концом веревки делается несколько оборотов вокруг рабочего конца (не менее трех) и завязывается контрольный узел (б). Затем узел затягивается. Ослабляется при рывках.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Штык\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/schtik.png',
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Легко вяжется, не затягивается, способен работать под большими нагрузками, “ползет” при переменных нагрузках.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Стремя\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/stremya.png',
                                      height: 130,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Если узел “стремя” используется при прикреплении к опоре, он затягивается как можно сильнее, а контрольный узел вяжется как можно ближе к опоре.\n"
                                      "\nУзел “стремя” может применяться как точка опоры для ноги при подъеме. Развязывается легче, чем “проводник” и “восьмерка”.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Булинь\" (\"беседочный\")\n",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/bulin.png',
                                      height: 200,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Незатягивающийся, легко развязывается, “ползет” при переменных нагрузках. Предназначен для страховочной обвязки, ремонтных и спасательных работ.\n"
                                      "\nДва основных способа вязания:\n"
                                      "⦁	вокруг опоры (на рисунке показана крестиком).\n"
                                      "⦁	с помощью “пустышки”.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Вспомогательные узлы",
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
                                      "\"Схватывающий\" узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/shvativayuschiy.png',
                                      height: 170,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Узел завязывается репшнуром (6 мм) на основной веревке (диаметром 10—12 мм). Контрольный узел не нужен, если репшнур предварительно завязан в петлю узлом “встречный” или “грейпвайн”."
                                      "\nИногда “схватывающий” узел завязывается одним концом репшнура.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\nУзел \"пустышка\"",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/pustischka.png',
                                      height: 130,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Этот узел можно использовать при завязывании узлов “булинь” и “двойной проводник”, а также как самостоятельный узел (например, при затягивании верха рюкзака). Он быстро и легко развязывается, если потянуть за концы в разные стороны.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Маркировочный\" узел",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/markirovochniy.png',
                                      height: 130,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Этот узел служит для связывания веревки после того, как она будет сбухтована.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\nУзел Бахмана",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/bahman.png',
                                      height: 130,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Узел является разновидностью “схватывающего” и может применяться в тех же целях. За карабин узел можно вести вниз и вверх, а при резком рывке узел затягивается. Он легко развязывается после снятия нагрузки.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\nКарабинная удавка",
                                      style: Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center, 
                                    ),  
                                    Image.asset(
                                      'assets/images/knots/karabinnayaUdavka.png',
                                      height: 150,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Узел применяется для привязывания веревки к опоре. Применяется, когда веревку необходимо сдернуть после спуска, например."
                                      "\nНа конце веревки завязана “восьмерка”.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              )
                            ]
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