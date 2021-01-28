import 'package:flutter/material.dart';

class CampfireStripe extends StatelessWidget {
  static const String routeName = "/Костровой";

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
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "\n1. Подготовить материалы для розжига костра (спички, сухое горючее) и упаковать их для походных условий.\n"
                                      "\n2. Если поход проходит в зимних или дождливых условиях, не мешает взять с собой материалы для растопки.\n",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "В походе:",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "\n1. Подготовить место для костра, соблюдая правила безопасности.\n"
                                      "\n2. Знать не менее пяти типов костров и их использование.\n"
                                      "\n3. Уметь разжигать костер в условиях зимнего, летнего похода, в дождливый день.\n"
                                      "\n4. Подготовить и поддерживать костер для повара.\n"
                                      "\n5. Убрать костровище после снятия группы со стоянки.\n"
                                      "\n6. Уметь тушить пожар песком и знать, когда применяется этот способ.\n",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
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
                            "Виды костров",
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
                                      "По назначению костры бывают для:",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n⦁	Приготовления пищи.\n"
                                      "\n⦁	Обогрева.\n"
                                      "\n⦁	Сушки вещей.\n"
                                      "\n⦁	Сигнальные (дымовые).",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Шалаш\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/shalash.png',
                                      height: 170,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Дрова укладываются в виде шалаша. Внизу между поленьями помещается растопка. Дает большое и ровное пламя. Предназначен для варки пищи в одной посуде (позволяет сконцентрировать пламя под котлом), просушивания одежды и освещения бивака. Образует мало углей. Требует много дров.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Нодья\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/nodya.png',
                                      height: 140,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Два сухостойных еловых бревна толщиной 30-40 см и длиной 1.5-3 м кладут параллельно друг другу на землю и по всей длине между ними разводят костер. По мере разгорания бревен, их сдвигают вплотную, закрепляют распорками и сверху кладут третье бревно. Очень надежный и жаркий костер длительного действия, применяемый для обогрева при ночлеге (бревна практически не нужно поправлять в течении ночи), создания атмосферы ночных посиделок, сушки и “сожжения” вещей. Также можно готовить пищу для большой группы людей, используя только два нижних бревна.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Колодец\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/kolodec.png',
                                      height: 160,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Дрова укладываются в виде сруба, внутреннее пространство заполнено мелкими дровами по типу “шалаша” или “кучи-малы”. Складывается из коротких поленьев средней толщины. Дает очень высокое мощное пламя. Удобен для приготовления пищи, обогрева и сушки одежды. Сгорает довольно быстро, образуя много горячих углей. Для большого праздничного костра берутся большие бревна.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Звезда\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/zvezda.png',
                                      height: 150,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Несколько бревен кладется на землю в виде звезды, зажигается в центре, по мере того как бревна сгорают, их подвигают внутрь. Костер длительного действия, вокруг него можно располагаться на ночлег. При небольшом размере костра, дающем жаркое узкое пламя, на нем можно готовить пищу в одной посуде.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Полинезийский\" (\"Ямка\")",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/yamka.png',
                                      height: 160,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Для такого костра вырывают ямку, обкладывают стенки поленьями (или камнями), а на дне разводят огонь. Горит очень долго за счет того, что в углублении не хватает воздуха, и горение постепенно переходит в тление, дает много углей и золы. Используется при нехватки дров. Не заметен.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Охотничий\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/ohotnichiy.png',
                                      height: 110,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Из трех бревен на подкладке; горит 6-8 часов без особого ухода (требуется лишь периодически продвигать вперед и сближать горящие концы бревен) и пригоден для односторонних заслонов.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Крест-накрест\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/taezniy.png',
                                      height: 140,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "На груду углей нужно положить рядом три полена, на них сверху — еще два или три под углом к первому ряду. Место пересечения рядов поленьев должно находиться над углями.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"На полено\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/krestnakrest.png',
                                      height: 140,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "На одно толстое бревно с подветренной стороны кладется одним концом несколько поленьев потоньше так, чтобы угли оказались под ними.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\n\"Помост\"",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      'assets/images/bonfires/napoleno.png',
                                      height: 140,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "Угли нужно разровнять на небольшой площадке и сверху положить несколько ровных поленьев близко друг к другу, оставив между ними небольшие щели. Поленья в этом случае будут гореть по всей длине, наиболее сильно — в местах соприкосновения.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\nДымовые костры",
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "\Служат для сигнализации и для защиты от гнуса и комаров. На обычный костер поверх топлива накладываются хвойные смолистые ветви или зеленая трава.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
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
                            "Разведение костра в экстримальных условиях",
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
                                      "1. Достать сухие дрова в мокром лесу можно под раскидистыми еловыми и сосновыми ветками, во внутренней части сухостоя. Кроме того костровой всегда должен иметь с собой растопку, защищенную от воды. Можно использовать искусственные материалы: горючую фотопленку, оргстекло, бумагу, сухой спирт, свечки-таблетки. Свечной огарок нужно установить на земле, и над ним соорудить шалашик из тонко нащепленной лучины или тонких еловых веточек.\n"
                                      "\n2. Необходимо укладывать веточки так, чтобы они создавали укрытие от дождя для растопки, а более толстые ветки должны прикрывать собой мелкие. Мелкие веточки разгорятся и подсушат более толстые дрова.\n"
                                      "\n3. Чтобы более толстые веточки лучше загорались, на них можно настрогать стружку таким образом, чтобы она оставалась на ветке, а не отделялась от нее (“Буратино”).\n"
                                      "\n4. Костры типа “колодец” и “звезда” для разведения под дождем совершенно не годятся, поскольку огонь ничем не прикрыт и быстро заливается водой.\n"
                                      "\n5. Поленья необходимо располагать так, чтобы к дождю они были обращены корой и по ним скатывалась вода, не проникая к огню. Используйте такие конструкции, при которых поленья располагаются близко друг к другу и образуют нечто вроде крыши, под которой укрываются угли, — “шалаш”, “нодья”, “таежный”.\n"
                                      "\n6. По возможности над костром для защиты от дождя нужно натянуть тент. Вокруг горящего костра разложить сырые дрова для просушки.\n",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
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
                            "Техника безопасности у костра",
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
                                      "1. Лучше всего разводить костер на уже использовавшемся кем-то до вас костровище, чтобы лишний раз не повреждать почву.\n"
                                      "\n2. Костер должен находиться от деревьев на расстоянии не меньше 4 метров. Место кострища очистить от мусора.\n"
                                      "\n3. Нельзя разводить костры на торфяниках, на камнях, на корнях деревьев, среди хвойных молодняков, на старых горельниках, в буреломах или на участках ветровального леса, на лесосеках с оставленными порубочными материалами и заготовленной древесиной, в местах с сухой травой, а также под кронами деревьев.\n"
                                      "\n4. По площади костра должен быть снят слой дерна. Ширина полосы должна быть не менее полуметра. Снятый дерн уложить в безопасном месте и поливать все время пребывания на стоянке. Во время ухода – уложить на прежнее место.\n"
                                      "\n5. Кострище необходимо окопать или обложить камнями.\n"
                                      "\n6. Костровой трос натягивается между двух деревьев, если такие есть неподалеку от костра, выше человеческого роста, а котел опускают над пламенем с помощью металлических крюков. К деревьям костровое крепится веревками, а не самим тросом, т.к. тот повреждает кору дерева. Лазить под тросиком нельзя. Иногда используются рогатины, если земля позволяет их крепко установить, тогда их необходимо регулярно поливать водой, чтобы они не загорелись.\n"
                                      "\n7. Во время приготовления пищи, возле костра находится ТОЛЬКО дежурный патруль.\n"
                                      "\n8. Дежурный, готовящий пищу на костре, должен быть одет в рабочую одежду, не синтетику, т.к. при попадании на неё огня она расплавляется и налипает на кожу. Волосы должны быть убраны. Ни в коем случае нельзя находиться у костра в шортах, шлепанцах, босиком или в резиновых сапогах.\n"
                                      "\n9. Костровые рукавицы всегда должны быть под рукой. Если рукавицы мокрые, то пользоваться ими нельзя – можно обжечься паром.\n"
                                      "\n10. Дужки котлов должны быть укреплены и заделаны, а крышки, которые, кстати, ускоряют закипание котла, должны легко одеваться на котлы.\n"
                                      "\n11. При закипании вода может выплескиваться через край. В этом случае нельзя суетиться и пытаться снять котел с огня – вычерпайте немного воды поварешкой и подрегулируйте пламя сдвиганием дров.\n"
                                      "\n12. Готовая пища ставится в недоступное для всех, кроме дежурных, место, чтобы случайно никто не уронил, не обжегся и не лишил отряд питания.\n"
                                      "\n13. Обувь, одежду и снаряжение нельзя оставлять сушиться у костра без присмотра. Одежду и спальники можно сушить у костра, на безопасном расстоянии от него.\n"
                                      "\n14. Поленница должна быть всегда укрыта от дождя (даже если светит солнце) и находиться вне досягаемости костра. В ней всегда должен быть запас дров.\n"
                                      "\n15. Тушат костер песком или водой. Горящий костер ни в коем случае нельзя оставлять без присмотра, особенно в сухую погоду.\n"
                                      "\n16. Дрова для разведения утреннего костра приготавливаются с вечера.",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        // child: Padding(
                        //   padding: const EdgeInsets.all(10),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.stretch,
                        //     mainAxisSize: MainAxisSize.max,
                        //     children: <Widget>[
                        //       Text(
                        //         "Техника безопасности у костра",
                        //         style: Theme.of(context).textTheme.headline5,
                        //       ),
                        //       Text(
                        //         "\n1. Лучше всего разводить костер на уже использовавшемся кем-то до вас костровище, чтобы лишний раз не повреждать почву.\n"
                        //         "\n2. Костер должен находиться от деревьев на расстоянии не меньше 4 метров. Место кострища очистить от мусора.\n"
                        //         "\n3. Нельзя разводить костры на торфяниках, на камнях, на корнях деревьев, среди хвойных молодняков, на старых горельниках, в буреломах или на участках ветровального леса, на лесосеках с оставленными порубочными материалами и заготовленной древесиной, в местах с сухой травой, а также под кронами деревьев.\n"
                        //         "\n4. По площади костра должен быть снят слой дерна. Ширина полосы должна быть не менее полуметра. Снятый дерн уложить в безопасном месте и поливать все время пребывания на стоянке. Во время ухода – уложить на прежнее место.\n"
                        //         "\n5. Кострище необходимо окопать или обложить камнями.\n"
                        //         "\n6. Костровой трос натягивается между двух деревьев, если такие есть неподалеку от костра, выше человеческого роста, а котел опускают над пламенем с помощью металлических крюков. К деревьям костровое крепится веревками, а не самим тросом, т.к. тот повреждает кору дерева. Лазить под тросиком нельзя. Иногда используются рогатины, если земля позволяет их крепко установить, тогда их необходимо регулярно поливать водой, чтобы они не загорелись.\n"
                        //         "\n7. Во время приготовления пищи, возле костра находится ТОЛЬКО дежурный патруль.\n"
                        //         "\n8. Дежурный, готовящий пищу на костре, должен быть одет в рабочую одежду, не синтетику, т.к. при попадании на неё огня она расплавляется и налипает на кожу. Волосы должны быть убраны. Ни в коем случае нельзя находиться у костра в шортах, шлепанцах, босиком или в резиновых сапогах.\n"
                        //         "\n9. Костровые рукавицы всегда должны быть под рукой. Если рукавицы мокрые, то пользоваться ими нельзя – можно обжечься паром.\n"
                        //         "\n10. Дужки котлов должны быть укреплены и заделаны, а крышки, которые, кстати, ускоряют закипание котла, должны легко одеваться на котлы.\n"
                        //         "\n11. При закипании вода может выплескиваться через край. В этом случае нельзя суетиться и пытаться снять котел с огня – вычерпайте немного воды поварешкой и подрегулируйте пламя сдвиганием дров.\n"
                        //         "\n12. Готовая пища ставится в недоступное для всех, кроме дежурных, место, чтобы случайно никто не уронил, не обжегся и не лишил отряд питания.\n"
                        //         "\n13. Обувь, одежду и снаряжение нельзя оставлять сушиться у костра без присмотра. Одежду и спальники можно сушить у костра, на безопасном расстоянии от него.\n"
                        //         "\n14. Поленница должна быть всегда укрыта от дождя (даже если светит солнце) и находиться вне досягаемости костра. В ней всегда должен быть запас дров.\n"
                        //         "\n15. Тушат костер песком или водой. Горящий костер ни в коем случае нельзя оставлять без присмотра, особенно в сухую погоду.\n"
                        //         "\n16. Дрова для разведения утреннего костра приготавливаются с вечера.",
                        //         style: Theme.of(context).textTheme.bodyText2,
                        //       ),
                        //     ],
                        //   )
                        // )
                      ),
                    ],
                  ),
                )),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
