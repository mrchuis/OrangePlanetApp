import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CampManagerStripe extends StatelessWidget {
  static const String routeName = "/Лагерник";

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
                  child:Container(
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
                                  "Лагерник должен уметь:",
                                  style: Theme.of(context).textTheme.headline5,
                                  //style: GoogleFonts.tinos(textStyle: Theme.of(context).textTheme.headline6),
                                ),
                                Text(
                                  "\n1. Уметь устраиваться на биваке, быстро располагаться в палатке или шалаше.\n"
                                  "\n2. Соблюдать гигиену, правила безопасности туристской стоянки, аккуратный вид стоянки.\n"
                                  "\n3. Принять участие в 4-х больших лесных играх (одна ночная). Подготовить цикловую игру.\n"
                                  "\n4. Уметь строить лагерные патенты.\n"
                                  "\n5. Знать, какой инвентарь в лагере нужен, уметь с ним обращаться.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                  //style: GoogleFonts.tinos(textStyle: Theme.of(context).textTheme.subtitle1),
                                ),
                              ],
                            ),
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
                                  "Постановка лагеря:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. Место для бивака подыскивается не позднее, чем за 2 часа до темноты.\n"
                                  "\n2. Место лагеря выбирается с учетом наличия: летом – воды, зимой – топлива для костра.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "В лагере должно быть:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. Окопанный костер, сиденья под тентом.\n"
                                  "\n2. Кухня (возможен отдельный костер, где никто не ходит кроме дежурных).\n"
                                  "\n3. Место для туалетов (учитывая ветер и рельеф).\n"
                                  "\n4. Место для инструментов (как правило, пилы кладутся под бревно, топоры  втыкаются в пень).\n"
                                  "\n5. Место для аптечки.\n"
                                  "\n6. Место для продуктов (продуктовая палатка, патент).\n"
                                  "\n7. Поленница, защищенная от дождя.\n"
                                  "\n8. Сушка для одежды: тренога из жердей с натянутыми веревками для вешания одежды.\n"
                                  "\n9. Сушилка для кружек, мисок.\n"
                                  "\n10. Помойная яма для органических отходов.\n"
                                  "\n11. Неорганические – складываются в мусорный пакет.\n"
                                  "\n12. Удобные подходы к воде.\n"
                                  "\n13. Умывальник.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "При постановке лагеря:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. Сразу распределить задачи для участников похода: костровой – выбирает место для костра, натягивает тросик (ставит перекладину), собирает хворост.\nВодоносы, 2 человека, сразу достают котлы и идут за водой, после этого оборудуют умывальники.\nПовар забирает у завхоза продукты и начинает готовить.\n2 человека натягивают тент, потом идут за дровами.\n2 человека ставят палатки.\nОстальные – за дровами. (Если скоро стемнеет, то все сразу идут за дровами!)\n"
                                  "\n2. После этого все достают пенки, застилают места в палатке, переодеваются в сухое, проводится осмотр на наличие клещей. Медик оказывает помощь (мозоли, насморк и прочие досадные неприятности).\nРеммастер проверяет и ремонтирует снаряжение.\n"
                                  "\n3. Распределяется время ночного дежурства на стоянке. Запас дров необходимо укрыть от сырости, Инструменты убираются под тент.\n"
                                  "\n4. Если предполагается дневка, то можно соорудить вокруг очага на безопасном расстоянии сиденья из бревен или напиленных чурбаков.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "Правила постановки палатки:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. Палатка ставится спиной к ветру, выходом к костру, на расстоянии с костром (во избежание возгорания и прожигания искрами), не в низине, чтобы не текла вода.\n"
                                  "\n2. Стойки не должны прорывать дно или верх палатки. Колышки должны держаться крепко. Возможно крепление за деревья, камни и т.п. Верхний тент не должен касаться палатки, чтобы не копился конденсат.\n"
                                  "\n3. Палатка окапывается и делается водоотток в сторону спуска.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "Технические места лагеря:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. Выше по течению реки располагается место для забора воды, ниже – место для купания.\n"
                                  "\n2. За пределами стоянки со стороны кухни выкапывается помойная яма, глубиной около 1 м, куда сбрасываются остатки пищи и сливается вода при мытье посуды. Периодически помойку засыпают песком и золой.\n"
                                  "\n3. В лагере должна быть чистота. Вещи не разбрасывать. Посуда храниться только чистой.\n"
                                  "\n4. При мытье посуды соблюдаются следующие правила:\n"
                                  "\t- Воду для мытья посуды берут там же, где и для приготовления пищи.\n"
                                  "\t- В водоеме посуду не моем. Ни в коем случае пищевые отходы нельзя смывать в воду или оставлять на берегу.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "Туалеты:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. Место для туалетов выбирают в 200—250 метрах от лагеря в густых зарослях, с учетом господствующего направления ветра, чтобы запахи уносились прочь.\n"
                                  "\n2. Нельзя располагать туалеты вблизи источников воды и выше по рельефу, чем расположена стоянка. Мужские и женские туалеты оборудуются отдельно.\n"
                                  "\n3. Для устройства туалета выкапывается длинная канава, на которую кладется решетка из досок или слег (жердей). Вокруг туалета ставятся стенки из непрозрачного полиэтилена, который можно закрепить на растущих вблизи деревьях или каркасе из жердей. Уровень стенок должен соответствовать росту «посетителей». Желательно оборудовать простейший навес, чтобы туалетом можно было пользоваться во время дождя.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "В туалете должно быть:",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\n1. “Белая радость”, она же бумага туалетная, в непромокаемой таре.\n"
                                  "\n2. Мешок с торфом или песком, чтобы присыпать яму каждый раз после использования."
                                  "\n3. Указатели М и Ж.\n"
                                  "\nПоддержание в чистоте туалета такое же дежурство, как и все остальные. Это такое же сменное поручение.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
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
                                  "Оставление стоянки",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                  "\nСтоянки не возникают просто так. Обычно их организуют рядом с тропами, в местах, где рядом есть вода и дрова. Тем обидней, когда на стоянке, откуда открываются красивые виды, ранее прошедшими группами оставлен мусор и беспорядок. Утром, прежде чем уйти, окиньте хозяйским взглядом ставшую такой уютной и приветливой стоянку. Чисто ли после вас? Оставлен ли запас дров и сухая растопка в недоступном для дождя месте? Сделайте все так, как будто вы придете сюда завтра сами сильно уставшие, промокшие и замерзшие.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
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