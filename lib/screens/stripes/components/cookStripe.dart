import 'package:flutter/material.dart';

class CookStripe extends StatelessWidget {
  static const String routeName = "/Повар";

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
                                          "Без повара не обойдется ни один поход. От его труда зависит и здоровье ребят, и их силы, и их настроение. И не всегда можно позвонить маме, чтобы узнать, как варить кашу без комочков, – все секреты надо знать заранее!",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ]),
                                ),
                              ]),
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
                                        "\n1. Составить раскладку на поход.\n"
                                        "\n2. Подсчитать вес продуктов.\n"
                                        "\n3. Собрать мешочки и другую тару для продуктов, упаковать продукты.\n",
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
                                        "\n1. Самостоятельно сварить два раза на полевой кухне обед из 2-х блюд (один мясной) и два раза приготовить иную еду.\n"
                                        "\n2. Соблюдать во время приготовления пищи все правила гигиены.\n",
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
                                        "\n1. Составить список оставшихся продуктов и сдать продукты на хранение.\n"
                                        "\n2. Собрать все мешочки от продуктов и сдать на хранение завхозу.",
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
                                "Раскладка",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Продукт',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во г./чел.',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Хлеб')),
                                              DataCell(Text('80')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Булка')),
                                              DataCell(Text('80')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Паштет')),
                                              DataCell(Text('25')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Крупы')),
                                              DataCell(Text('60')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Манка')),
                                              DataCell(Text('60')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Геркулес')),
                                              DataCell(Text('50')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Сухое молоко')),
                                              DataCell(Text('15')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Сухофрукты')),
                                              DataCell(Text('30')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Кофе')),
                                              DataCell(Text('2')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Печенье')),
                                              DataCell(Text('50')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Сушки')),
                                              DataCell(Text('50')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Кетчуп')),
                                              DataCell(Text('20')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Макароны')),
                                              DataCell(Text('100')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Сухой суп')),
                                              DataCell(Text('30')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Варенье')),
                                              DataCell(Text('30')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Сахар')),
                                              DataCell(Text('20')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Какао')),
                                              DataCell(Text('12')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text(
                                                  'Тушеное мясо\n(консервы)')),
                                              DataCell(Text('100')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(
                                                  Text('Масло растительное')),
                                              DataCell(Text('25')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Сыр')),
                                              DataCell(Text('30')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Рыбные консервы')),
                                              DataCell(Text('70')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(
                                                  Text('Сгущенное молоко')),
                                              DataCell(Text('40')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Конфеты')),
                                              DataCell(Text('15')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Чай')),
                                              DataCell(Text('2')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Соль')),
                                              DataCell(Text('15')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Рис')),
                                              DataCell(Text('70')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(
                                                  Text('Картофель (для супа)')),
                                              DataCell(Text('75')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text(
                                                  'Картофель\n(для второго блюда)')),
                                              DataCell(Text('350')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Морковь')),
                                              DataCell(Text('2 шт./10 чел.')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Лук')),
                                              DataCell(Text('2 шт./10 чел.')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Свекла')),
                                              DataCell(Text('2 шт./10 чел.')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Капуста')),
                                              DataCell(Text('1,5 кг./10 чел.')),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                              title: Text(
                                "Составление раскладки",
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
                                        RichText(
                                            text: TextSpan(
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2,
                                                children: [
                                              TextSpan(
                                                text: "Первый столбик: ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "меню. Пишется то, что вы будете готовить, например: манная каша, бутерброд с вареньем, чай с сахаром.\n",
                                              ),
                                              TextSpan(
                                                text: "\nВторой столбик:",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    " раскладка на 1 человека. Перечисляются ингредиенты, которые понадобятся для приготовления. Например: манная крупа, булка, варенье, чай, сахар, соль, сгущенка.\n",
                                              ),
                                              TextSpan(
                                                text: "\nТретий столбик:",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    " вес продуктов на 1 человека. Напротив каждого продукта пишем необходимое количество в расчете на одного человека (см. раскладку).\n",
                                              ),
                                              TextSpan(
                                                text: "\nЧетвертый столбик:",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    " вес на отряд. Пишется кол-во граммов на весь отряд.\n",
                                              ),
                                              TextSpan(
                                                text: "\nВ конце таблицы",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    " подводится итог, что и сколько надо с собой взять. Но не стоит принимать безоговорочно получившиеся цифры. Помните, что соль и сахар обычно добавляются по вкусу. Чай рассчитываем следующим образом: берем 4 пакетика в чайник и 5 пакетиков, если вы завариваете в котле.",
                                              ),
                                            ])),
                                      ]),
                                ),
                              ]),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                              title: Text(
                                "Правила гигиены и хранения продуктов",
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
                                          "⦁ Продукты в походе хранятся в продуктовой палатке в полиэтиленовых мешках. Вынимаются только завхозом или поваром.\n"
                                          "\n⦁ Сахар удобно нести в бутылках, а не в мешках.\n"
                                          "\n⦁ Если у вас с собой такие продукты как сыр или сосиски, то они ОБЯЗАТЕЛЬНО готовятся в первый день, если вы про них забыли – есть их категорически запрещается.\n"
                                          "\n⦁ По дороге мы НЕ собираем никакие грибы, ягоды, тем более не готовим грибной суп!\n"
                                          "\n⦁ Категорически запрещается пить некипяченую воду.\n"
                                          "\n⦁ Любые овощи, прежде чем их кидать в котел, моют.\n"
                                          "\n⦁ Не стоит размешивать одним половником суп и гречку, не поленитесь его сполоснуть, впрочем, как и нож, которым вы только что рубили тушенку, а теперь намазываете джем.\n"
                                          "\n⦁ Повар должен проследить, чтобы все перед едой вымыли руки и чтобы кухонные приборы были чистыми.\n"
                                          "\n⦁ Все пищевые отходы выкидываются в мусорную яму.\n"
                                          "\n⦁ На столе после готовки не должно оставаться продуктов.\n"
                                          "\n⦁ После еды кухонные приборы должны быть помыты и поставлены сушиться на специальные сушилки.\n"
                                          "\n⦁ Посуда моется только в специально отведенном месте, а не в водоемах.\n"
                                          "\n⦁ Любая посуда после мытья обязательно ополаскивается горячей водой.\n"
                                          "\n⦁ Тщательно смывайте песок или средство, которым моете посуду.",
                                        ),
                                      ]),
                                ),
                              ]),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                              title: Text(
                                "Советы с половником в руках",
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
                                          "⦁ Сахар, если его не положили до того, как каша начала загустевать, надо сначала развести в кипятке в отдельной кружке. Это касается рафинада, а не сахарного песка.\n"
                                          "\n⦁ Если к моменту, когда каша начала загустевать, в костре образовалось достаточно углей, лучше снять ее с огня и поставить доходить на угли. Так каша не пригорит.\n"
                                          "\n⦁ Если каша получилась недосоленная, надо развести нужное количество соли в кипятке, влить этот раствор в кашу и тщательно перемешать. Засыпать соль в загустевшую кашу нельзя — соль не разойдется. Если, напротив, каша получилась пересоленная, дайте попробовать ее остальным. Если все находят, что соли слишком много, залейте кашу кипятком, перемешайте и слейте воду. А если вдруг суп оказался пересолен, положите туда несколько ломтиков сырой картофелины и немного проварите его, затем картошку выбросите.\n"
                                          "\n⦁ Никогда не сластите чай прямо в чайнике: в отряде могут быть люди, которые пьют НЕСЛАДКИЙ чай. В походе не стоит заваривать чай прямо в ведре – используйте маленький котелок вместо заварного чайника. Заваренный чай не кипятите – исчезнут вкус и аромат.\n"
                                          "\n⦁ С рыбными консервами готовят только рис\n"
                                          "\n⦁ Перед тем как положить мясо, спросите, есть ли в отряде вегетарианцы и, если есть, положите им отдельную порцию без мяса.\n"
                                          "\n⦁ Пустые консервные банки обжигаются, плющатся топором и берутся с собой до ближайшего населенного пункта, где и выбрасываются.",
                                        ),
                                      ]),
                                ),
                              ]),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                              title: Text(
                                "Рецепты",
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
                                        RichText(
                                            text: TextSpan(
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2,
                                                children: [
                                              TextSpan(
                                                text: "Варим суп.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Вода ставится заранее. Котел для супа всегда больше котла для второго. Все овощи моются и режутся до того, как их забрасывают в котел! Когда вода закипит, бросаем сначала в нее морковку/свеклу/капусту, потому что они долго варятся, а резать их стоит мельче. Через 10 минут закидываем картошку (обычно 8-10 штук на отряд хватает). Лук разрезают пополам и кидают одновременно с картошкой. Когда овощи почти сварились (время будет зависеть от огня, на котором вы готовите), мы засыпаем сухой суп (4-5 пакетиков), специи (аккуратнее с перцем) и тушенку (1-2 банки на котел). Тушенку перед тем, как кидать в суп, надо открыть, снять ложкой и выкинуть слой жира, затем нарубить мясо прямо в банке ножом, чтобы в супе не плавал один большой кусок. Когда солите суп, учитывайте, что суп в пакетиках содержит соль! Суп надо периодически мешать.\n",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\nВарим манную кашу на сухом молоке.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Пока вода кипит, сухое молоко разводится отдельно в тарелочках и тщательно размешивается от комочков. После того, как вода закипела, снимаем котел с костра, выливаем в воду разведенное сухое молоко. Тонкой струйкой засыпаем манную кашу, второй человек в это же время тщательно ее размешивает (иначе будут комочки). Манка готовится еще минут 10, хотя внешне она выглядит уже готовой мгновенно. Ставим на костер, чтобы каша приготовилась окончательно, при этом мешая ее, чтобы не было комочков и не пригорела. Снимаем с огня и добавляем сахар.\n\nЕсли есть сгущенное молоко, манную кашу варят так же, как и на сухом, только не надо разводить молоко на тарелке, и вряд ли нужна добавка сахара – попробуй на вкус, повар!\n",
                                              ),
                                              TextSpan(
                                                text: "\nВарим рис.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Рис до приготовления промываем в холодной воде. Для рассыпчатого риса придется по часам следить за временем варки. В соленый кипяток засыпают рис и затем варят его 18–20 минут, не больше. Все это время вода должна кипеть, но не бурно, иначе она может выкипеть раньше, чем рис сварится. За 2–3 минуты до конца варки в кашу добавляют лавровый лист и несколько горошинок перца, затем снимают с огня и сливают всю воду.\n\nЧтобы приготовить вязкую рисовую кашу, рис засыпают в соленый кипяток, доводят до кипения и варят минут пятнадцать, затем сливают лишнюю воду, добавляют молока и сахара по вкусу. После этого нужно поставить кашу вариться еще минут 8–10 на медленном огне или на углях. Если нужно положить в кашу чернослива, надо его предварительно замочить в кипятке, чтобы он разбух.\n",
                                              ),
                                              TextSpan(
                                                text: "\nВарим гречу.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Для рассыпчатой гречки крупу надо предварительно чуть-чуть обжарить на сковородке, противне или на дне свободной кастрюли. После этого зернышки крупы становятся тверже, они не трескаются и не рассыпаются при варке. Затем крупу засыпают в соленый кипяток и варят до готовности. Обычно на это уходит минут 30–40. Готовность каши определяется на глаз и на вкус. Для рассыпчатой гречневой каши воды надо взять 2–3 кружки на кружку крупы.\n\nВязкая гречневая каша варится точно так же, но при этом не требуется предварительного обжаривания крупы, а воды берется больше: 7–8 кружек на кружку крупы.\n",
                                              ),
                                              TextSpan(
                                                text: "\nВарим пшено.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Перед варкой пшено надо тщательно промыть в холодной, а лучше – в теплой воде, перетирая крупу в ладонях (иначе каша будет горькой). Пшено промывают 3–5 раз, каждый раз сливая воду. Если условия бивака не позволяют промыть пшено, лучше сварить какую-нибудь другую кашу. После того как пшено тщательно промыто, его предварительно заливают кипятком (чтобы вода немного покрывала его), быстро доводят до кипения и сливают воду. Остаток горечи уйдет со слитой водой. После этого заливают крупу как следует кипятком, солят, если надо – добавляют молоко и сахар и варят минут 30-40.\n",
                                              ),
                                              TextSpan(
                                                text: "\nВарим перловку.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Перловую крупу перед употреблением промывают в холодной воде, затем засыпают в несоленый кипяток и после закипания варят минут сорок на медленном огне, следя за тем, чтобы вода не выкипела. Солят кашу, когда она уже готова, после чего ее надо немного подержать на огне и снимать.\n",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\nВарим вермишель, макароны, лапшу.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Вермишель варят строго по часам. Ее засыпают в соленый кипяток, доводят до кипения и варят ровно 8 минут, после чего сливают. Если вермишель переварить, получится невкусная каша. Макаронам надо вариться после закипания минут 18-20, лапше – минут 15-18. На картонных пачках, в которых они продаются, указан способ приготовления.\n",
                                              ),
                                              TextSpan(
                                                text: "\nВарим компот.\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Берутся сухофрукты и тщательно, не один раз, промываются, затем засыпаются в почти кипящую воду вместе с сахаром и варятся там, пока не размякнут до мягкого состояния.\n\nВот вы начинаете готовить, и сразу впадаете в растерянность – сколько нужно брать продуктов на варку? В пол-литровую кружку входит (в граммах): манки – 370, гречки –400, пшена – 410, овсянки – 350, гороху – 420, лапши (ломаной) и вермишели – 210. В столовую ложку, наполненную в обрез с краями, помещается (в граммах): масла (топленого или сливочного) – 15, сахарного песку – 12, сгущенного молока – 15, сухого молока – 8, соли – 15. Но учтите, что эти цифры приблизительны (вес крупы зависит от влажности, а количество масла или сахара в ложке – от того, ли вы берете ложку вровень с краями или с небольшой горкой). А сколько брать воды? На каждую кружку крупы потребуется следующее количество кружек воды: манка: 7–8, гречка: 7–8, пшено 6, овсянка 8, геркулес 3, рис 7, перловка 5, горох, бобы, фасоль: 3–4. Для супа надо брать крупы или макаронных изделий из расчета 30–40 г на литр воды, манки – меньше, граммов 20–25.",
                                              ),
                                            ])),
                                      ]),
                                ),
                              ]),
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
