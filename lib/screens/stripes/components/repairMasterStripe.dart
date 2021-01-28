import 'package:flutter/material.dart';

class RepairMasterStripe extends StatelessWidget {
  static const String routeName = "/Мастер ремонта снаряжения";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: CustomScrollView(
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
                delegate: SliverChildBuilderDelegate(
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
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        "Мастер ремонта снаряжения (реммастер) – это умелые руки и Самоделкин в одном лице. Кто, как не он, поможет залатать рюкзак и исправить заевшую «молнию»? Реммастер, кроме стандартного походного ремонтного набора, имеет еще под рукой  и личный небольшой ремнабор (нитки, иголки, пару пуговиц разного размера, пару заплаток разного материала, изоленту, ножницы, быстровысыхающий клей).",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Требования к нашивке",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        "До похода:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n1. Составить список ремнабора для похода с учетом возможных поломок и порчи имеющегося снаряжения. \n"
                                        "\n2. Укомплектовать и упаковать ремнабор.\n"
                                        "\n3.	Пройти инструктаж по ремонту снаряжения.\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Text(
                                        "В походе:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n1.	По требованию участников выдавать и собирать необходимые инструменты для ремонта личного. \n"
                                        "\n2.	Следить за сохранностью ремнабора, не допускать потери инструмента. \n"
                                        "\n3.	Ремонтировать групповое снаряжение. \n"
                                        "\n4.	Помогать ремонтировать личное снаряжение. \n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Text(
                                        "После похода:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n1.	Обеспечить сохранность ремнабора после похода.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Рекомендуемый список ремнабора",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        "1.	Напильник (треугольный) и брусок для правки топоров.\n"
                                        "\n2.	Иглы швейные различной толщины.\n"
                                        "\n3.	Нитки различных расцветок (капроновые и хлопчатобумажные).\n"
                                        "\n4.	Всевозможные шнурки.\n"
                                        "\n5.	Куски ткани – капрон, брезент, х/б и т.д. для заплат.\n"
                                        "\n6.	Наперстки – 2 шт.\n"
                                        "\n7.	Стропы различной ширины.\n"
                                        "\n8.	Липучка (полоски шершавой материи).\n"
                                        "\n9.	Пряжки, самосбросы и прочая рюкзачная фурнитура.\n"
                                        "\n10.	Куски проволоки разной толщины и жесткости.\n"
                                        "\n11.	Пассатижи.\n"
                                        "\n12.	Супер-клей.\n"
                                        "\n13.	Ножницы (маленькие).\n"
                                        "\n14.	Зажигалка.\n"
                                        "\n15.	Зажимы (стопоры) для веревочек (рюкзачные).\n"
                                        "\n16.	Бегунки для молний и сами молнии.\n"
                                        "\n17.	Резинки (ленточные и жгутовые).\n"
                                        "\n18.	Перочинный нож.\n"
                                        "\n19.	Скотч, изолента.\n"
                                        "\n20.	Несколько гвоздей, винты и гайки.\n"
                                        "\n21.	Кусочки шкурки разного номера.\n"
                                        "\n22.	Чехол для ремнабора.\n"
                                        "\nПри отправлении в водный или альпинистский поход ремнабор составляется с учетом специфики этого похода.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Швы и их виды",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        "Швы нужны, чтобы скрепить части ткани, обработать край или срез изделия. Швы различаются по назначению, виду и длине стежка. Некоторые швы предназначены для тонких эластичных материалов, также существуют множество декоративных швов. Их можно выполнить двумя способами: ручным и машинным. Любой шов состоит из стежков, повторяющихся по всей длине шва. Стежок – это переплетение нити, которую продевают через ткань иголкой.\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Image.asset(
                                        'assets/images/repairMaster/seams.png',
                                        alignment: Alignment.topCenter,
                                      ),
                                      Text(
                                        "Рис. швов: а) обметочный; б) крытый; в) крестовый; г) стебельчатый\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Image.asset(
                                        'assets/images/repairMaster/seam1.png',
                                        height: 90,
                                        alignment: Alignment.topCenter,
                                      ),
                                      Text(
                                        "\nОбметочный шов нужен для того, чтобы предотвратить распушивание и разрушение края ткани изделия. Крытый шов нужен при зашивании отверстий после наполнения чехлов, крестовый накладывают при сшивании плотных и крепких тканей, а самым прочным является стебельчатый шов.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Пришивыние пуговиц",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/repairMaster/buttons.png',
                                        height: 180,
                                        alignment: Alignment.topCenter,
                                      ),
                                      Text(
                                        "\nВдень в иголку нитку и сделай узелок. Воткни иглу в ткань и вытяни нитку (рис. а). Повтори то же самое еще раз. Затем надень пуговицу одним отверстием на нитку, а через другое отверстие продень иглу и около нитки проколи материю насквозь. Пришивая пуговицу, не затягивай стежка. Пуговицу следует держать пальцами левой руки так, чтобы между ней и материалом оставалось расстояние примерно 3 мм. Чтобы крепко пришить пуговицу, достаточно сделать по шесть стежков в каждую пару ее отверстий (рис. б). При последнем стежке иголку с кой продевают сверху через отверстие пуговицы, не прокалывая, однако, материала. Иглу с ниткой протяни между пуговицей и материалом и несколько раз обмотай вокруг нитей под пуговицей, образуя таким образом «ножку» (рис. г), после чего закрепи нить под пуговицей (рис. д). Пуговицы можно пришивать параллельными стежками или крестиком (рис. в). Для придания прочности можно применять подкладку, а если изделие из плотной ткани — под пуговицу, которую подкладывается с изнаночной стороны.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Прямой разрыв ткани",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/repairMaster/tissue1.png',
                                        //height: 380,
                                        alignment: Alignment.topCenter,
                                      ),
                                      Text(
                                        "\nНа рисунке а) изображён разрыв ткани, под буквой б) показано, как надо подогнуть края материи, чтобы они не осыпались при пришивании и не разошлись потом из-под шва. Подгибаем на изнаночную сторону, положив ткань лицевой стороной на стол. В этом положении смётываем края швом «вперёд иголку» (в). Затем подстрижем все торчащие из ткани кончики ниток, и начнём шить основным швом «строчка». Затем медленно, частыми мелкими стежками швом «через край» (г), мы идём вдоль прорыва от одного конца до другого (и даже немного дальше). Закрепляем нитку на конце несколькими колками на одном месте и отрезаем ножницами. Теперь можем выдернуть первоначальную, стягивающую нитку, а если она скрылась под новым швом, те можно и оставить. Прогладим шов горячим утюгом, чтобы материя не отдувалась и не морщилась. Гладить надо с изнанки.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Сложный разрыв ткани",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/repairMaster/tissue2.png',
                                        //height: 380,
                                        alignment: Alignment.topCenter,
                                      ),
                                      Text(
                                        "\nКладём свою вещь на стол так, чтобы всё место разрыва было на твёрдой ровной поверхности. Разглаживаем порвавшиеся концы и, если в таком положении они не держатся, слегка стягиваем их один к другому несколькими стежками, стараясь не порвать и не увеличить отверстие. Затем намётываем и шьём, начиная с более коротких линий разрыва, оставляя самый длинный на самый конец работы. Каждое место разрыва надо начинать шить немного дальше, на крепком месте. Лучше всего применять шов «строчка» (б). После того как закрепили всё отверстие, подрезаем «усики» и начинаем окончательное зашивание швом «через край» сначала самых коротких линий, потом длинных, заканчивая каждый шов несколько дальше того места, где начался разрыв, постепенно сводя стежки на нет путём их укорочения. Намёточную нитку выдёргиваем и заглаживаем шов горячим утюгом. Окончательный результат видим на рисунках: в) — на изнанке, г) — на лицевой стороне.\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Text(
                                        "Но если разрыв усложнён множеством линий повреждения и выпадением части ткани, или, наконец, материя на месте разрыва настолько проносилась, что сшивание клиньев не может быть прочным, то необходимо поставить заплатку.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Ставим заплаты",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/repairMaster/patch.png',
                                        //height: 380,
                                        alignment: Alignment.topCenter,
                                      ),
                                      Text(
                                        "\nРазрыв может иметь разные формы (рис. а). Надо уметь подрезать его края так, чтобы было по возможности небольшое отверстие, но в то же время с прочными, надёжными для зашивания краями (б). Эти края надо обшить. Подбери форму в соответствии с рисунком ткани, чтобы будущий шов проходил незаметно, скрытым в линиях рисунка. Вырезать нужно не только сам прорыв, но и ненадёжные (подорванные или протёртые) места. Затем нужно подобрать форму заплаты и  наложить её на место прорыва с левой стороны   («левой»   называют   изнаночную  сторону).  Рисунок заплаты должен подходить к рисунку ткани (в).",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Советы умелым рукам",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10.0, bottom: 10.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        "Порвалась ткань и образовалась дырка – аккуратно поставь заплатку.\n"
                                        "\nОторвалась оттяжка от кострового тента – в уголок от тента вложи маленькую шишку и вокруг нее закрепи новую оттяжку.\n"
                                        "\nПрожгли костровой тент – поставь заплатку из соответствующего материала (брезент).\n"
                                        "\nСломалась пластмассовая дуга от палатки – скрепи «остатки» дуги с металлическим прутом или палкой (временно), замени новой дугой.\n"
                                        "\nРасходится молния, и «собачка» не работает – слегка подожми края «собачки» плоскогубцами.\n"
                                        "\nА вообще следи, реммастер, чтобы со снаряжением обращались аккуратно, – меньше чинить придется!",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              childCount: 1,
            )),
          ],
        ),
      ),
    );
  }
}
