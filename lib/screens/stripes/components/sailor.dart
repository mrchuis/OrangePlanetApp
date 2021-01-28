import 'package:flutter/material.dart';

class SailorStripe extends StatelessWidget {
  static const String routeName = "/Матрос";

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
                                        "1. Специальность «матрос» можно получить тем, кто уже имеет нашивку узлового и штурмана.\n"
                                        "\n2.	Знать типы весельных судов, силовой набор судна.\n"
                                        "\n3.	Знать и уметь подавать сигналы бедствия.\n"
                                        "\n4. Знать и выполнять правила безопасности на судне.\n"
                                        "\n5.	Знать и исполнять правила поведения на воде, уметь пользоваться спасательными средствами, правильно и быстро одевать спасательный жилет.\n"
                                        "\n6.	Овладеть и практически выполнять команды рулевого.\n"
                                        "\n7.	Уметь пользоваться компасом.\n"
                                        "\n8.	Знать основные правила плавания по внутренним водным путям.\n"
                                        "\n9.	Принять участие в водных программах.",
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
                                "Устройство шлюпки",
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
                                          'assets/images/sailor/boat.png',
                                          //height: 120,
                                          alignment: Alignment.topCenter,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2,
                                              children: [
                                                TextSpan(
                                                  text: "\nШлюпками ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "называются малые гребные, парусные и моторные беспалубные суда. Они изготовляются из дерева, металла, пластмасс и из резинотканей — надувные.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nУстройство шлюпки:",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " 1 — киль, 2 — форштевень 3 — ахтерштевень 4 — транцевая доска 5 — шпангоуты 6 — обшивка, 7 — привальный брус, 8 — планширь, 9 — буртик, 10 — подлегарсы. 11 — банка, 12 — носовой решетчатый люк 13 — кормовое сиденье, 14 — кница, 15 — стойка, 16 — кильсон, 17— пробка, 18 — рым, 19 — брешгук; 20 — шпунтовый пояс: 21 — ширстрек, 22 — руль, 23 — рым, 24 — фалинь; 25 — оковка, 26 — подуключина 27 — наметка, 28 — гнездо дли нагеля. 29 — ванг-путенс, 30 — фасонный обушок, 31 — обух с гаком, 32 — флюгарка.\n",
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nСовокупность продольных и поперечных брусьев, представляющих каркас шлюпки, называется набором. В основу набора кладется дубовый брус — киль, продолжением которого в носовой части шлюпки является вертикальный брус — форштевень, а в кормовой — вертикальный брус — ахтерштевень. На всех шлюпках, кроме шлюпок типа вельбот, к ахтерштевню крепится транцевая доска. \n\nС",
                                                ),
                                                TextSpan(
                                                  text: " внутренней стороны ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "шлюпки немного выше расчетной ватерлинии по бортам прокладываются дубовые брусья — подлёгарсы, на которые накладываются банки, носовой решетчатый люк и кормовое сиденье.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nДно шлюпки ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "закрывается съемными щитами — рыбинами, имеющими упоры для ног гребцов. В корме дно закрывается кормовым решетчатым люком.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nУправляется шлюпка ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "рулем, который навешивается в диаметральной плоскости на специальный крюк и петлю или на металлический стержень, укрепленный на ахтерштевне или транцевой доске.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nШлюпки ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "снабжаются необходимыми для плавания предметами: веслами, румпелями, отпорными крюками, уключинами, лейками, анкерками, семафорными флажками, якорем. Одним из основных предметов снабжения являются весла. На вельботах и спасательных шлюпках применяются распашные, а на всех других типах шлюпок — вальковые весла.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nВальковое весло ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "имеет следующие наименования частей: рукоять, валек, веретено и лопасть. Одна сторона лопасти имеет грань — для прочности, вторая (рабочая) сторона лопасти гладкая. Правильное положение весла при гребле — рабочей стороной в корму. Лопасть весла имеет металлическую оковку, которая предохраняет ее от раскалывания.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nВесла ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "должны быть подогнаны так, чтобы сидящие на одной банке гребцы не мешали друг другу (расстояние между рукоятями весел следует иметь около 15 см). При гребле одна рука гребца лежит на вальке, а вторая держит весло за рукоять.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nУпоры для ног ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "располагают так, чтобы ноги у сидящего гребца были несколько согнуты в коленях, а колени находились немного ниже тазобедренных суставов.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nГребцы",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ", сидящие на загребной банке, называются загребными. Они назначаются из наиболее сильных и выносливых. Баковые гребцы должны отличаться ловкостью, чтобы своей оплошностью не помешать действию других гребцов.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nПосадка гребцов ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "производится по команде ",
                                                ),
                                                TextSpan(
                                                  text:
                                                      "«Гребцы — на шлюпку!» ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      ", а выход из шлюпки по команде ",
                                                ),
                                                TextSpan(
                                                  text:
                                                      "«Гребцам — выйти из шлюпки!»\n",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nНа шлюпке должен соблюдаться образцовый порядок.\n",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nОчередность посадки гребцов в шлюпку зависит от расположения шлюпки. Если она стоит носом к трапу, то первым в нее садится старшина, за ним — загребные, за загребными — средние (гребцы средней банки), а затем — баковые. Если посадка производится с кормы, то первыми заходят баковые, за ними все остальные по порядку номеров банок. Старшина шлюпки садится последним. При посадке в шлюпку гребцы обязаны очистить обувь от пыли и грязи. Гребцам запрещается ходить по банкам, облокачиваться о планширь, выставлять руки и локти за борт.\n",
                                                ),
                                              ]),
                                        ),
                                      ]),
                                ),
                              ]),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Основные команды",
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
                                                text:
                                                    "В первоначальной стадии обучения следует отработать действия гребцов по следующим командам:\n\n",
                                              ),
                                              TextSpan(
                                                text: "«Уключины вставить!»\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Гребцы, повернувшись вполоборота к своим бортам, внешней рукой вставляют уключины в гнезда так, чтобы они были развернуты вдоль планширя.\n",
                                              ),
                                              TextSpan(
                                                text: "\n«Весла разобрать!»\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Гребцы внутренней рукой берут свое весло за рукоять, а внешнюю руку продевают под весло так, чтобы валек оказался на локтевом сгибе. Используя локтевой сгиб как ось рычага, нажимают на рукоять и кладут лопасть весла на планширь за вторую уключину, считая свою первой. Вальки весел должны быть прижаты к борту на высоте планширя. Корпус гребцов развернут вполоборота к своему борту, а голова — в сторону лопасти своего весла.\n",
                                              ),
                                              TextSpan(
                                                text: "\n«Весла»\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Равняясь по загребным, гребцы поднимают весла на локтевом сгибе, заносят их перпендикулярно диаметральной плоскости шлюпки и серединой «кожи» вкладывают в уключины. Освободившуюся внешнюю руку кладут ладонью на валек так, чтобы руки лежали ладонями вниз на ширине плеч. Лопасть весла должна быть развернута стороной с гранью вверх и иметь небольшой наклон к воде.\n",
                                              ),
                                              TextSpan(
                                                text: "\n«На воду раз!»\n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Равняясь по загребным, гребцы наклоняют туловище, вытягивают руки вперед, быстро заносят лопасти весел в сторону носа шлюпки, делая при этом вдох. Для уменьшения сопротивления воздуха лопасти при заносе должны идти горизонтально, и лишь в конце движением кистей рук весло разворачивается от себя так, чтобы передняя кромка лопасти имела небольшой наклон к воде. Ноги гребца согнуты в коленях, голова поднята (рис. а).\n",
                                              ),
                                              TextSpan(
                                                text: "\n«Два!» \n",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Гребцы одновременно опускают лопасти на 2/3 в воду и, отклоняясь корпусом назад, с силой проводят лопасть в воде, делая при этом выдох. При выполнении этого приема основную нагрузку принимают на себя мышцы спины, руки на первой фазе гребка находятся в вытянутом состоянии. После того как туловище пройдет вертикальное положение, руки сгибаются и с силой подтягивают рукоять весла к груди, ноги выпрямляются (рис б).\n",
                                              ),
                                            ]),
                                      ),
                                      Image.asset(
                                        'assets/images/sailor/seats.png',
                                        height: 300,
                                        alignment: Alignment.topCenter,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                            children: [
                                              TextSpan(
                                                text:
                                                    "\nВо время гребка лопасть должна идти в воде в вертикальном положении и в этом же положении выниматься из нее. Окончив гребок, весло разворачивают на себя, чтобы при заносе его для следующего гребка кромка лопасти, обращенная к носу, была несколько выше кромки, обращенной к корме. В конце заноса лопасть разворачивается для нового гребка. После выполнения приема по счету «Два!» сразу же следует команда «Раз!», по которой производится занос весел для нового гребка.\n",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\nПри подходе к борту корабля, к пирсу и в других случаях, когда необходимо убрать весла, подается команда ",
                                              ),
                                              TextSpan(
                                                text: "«Шабаш!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Выполняя эту команду, гребцы подкладывают локтевой сгиб внешней руки под валек весла и, нажимая другой рукой на рукоять, вынимают весла из уключин, заносят их лопастями к носу и без шума, но быстро укладывают к бортам. Первыми укладывают свои весла боковые, затем — гребцы средней банки и, наконец, — загребные.\n",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\nГребцы должны уметь грести на разных банках и на обоих бортах. Для того чтобы при отходе от корабля (пирса) дать шлюпке ход вперед, подается команда ",
                                              ),
                                              TextSpan(
                                                text: "«Протянуться!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "По этой команде загребной и баковый того борта, который ближе к кораблю или пирсу, протягиваются отпорными крюками вперед.\n",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\nКогда шлюпка приобрела ход, старшина перекладывает руль от борта корабля или пирса, дает команду ",
                                              ),
                                              TextSpan(
                                                text: "«Оттолкнуть нос!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    ", по которой баковый, продолжая протягиваться длинным отпорным крюком, с силой отталкивает нос, и отпорные крюки укладываются на рангоутный чехол.",
                                              ),
                                            ]),
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
                              "Команды при движении на веслах",
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
                                                text: "«Отваливай!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "- объединяет действия гребцов по четырем командам: «Протянуться!», «Оттолкнуть нос!», «Уключины вставить!» и «Весла разобрать!» (на шлюпках с распашными веслами по этой команде гребцы выполняют действия и по команде «Весла!»). ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nОсмотревшись за бортами, командир подает следующие две известные нам команды: ",
                                              ),
                                              TextSpan(
                                                text: "«Весла!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "и ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "«На воду!» Командир шлюпки ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "должен подавать команды отчетливо, громким голосом и обязательно в момент, когда лопасти весел находятся в воде и еще не доведены: до траверза. Поданная команда исполняется гребцами после окончания гребка. ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nДля временного прекращения гребли ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "подается команда ",
                                              ),
                                              TextSpan(
                                                text: "«Суши весла!»",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    ", по которой гребцы поднимают лопасти из воды и выравнивают их в горизонтальном положении параллельно поверхности воды. При этом весла устанавливаются перпендикулярно диаметральной плоскости шлюпки нерабочей стороной лопасти вверх. ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nДля уменьшения скорости ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "движения шлюпки или полной ее остановки подается команда ",
                                              ),
                                              TextSpan(
                                                text: "«Весла в воду!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "По этой команде гребцы опускают 1/3 лопасти ребром в воду и, удерживая валек на высоте груди, корпусом налегают на него.",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nПосле достижения цели, в зависимости от обстановки, подается команда ",
                                              ),
                                              TextSpan(
                                                text: "«Суши весла!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "или ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "«Шабаш!»  «Табань обе!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "По этой команде гребцы одновременно заносят весла к корме, опускают лопасти в воду и начинают грести в обратном направлении, давая шлюпке ход назад. Никогда не следует подавать эту команду на шлюпке, имеющей ход вперед.",
                                              ),
                                              TextSpan(
                                                text: "\n\n«Весла по борту!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "По этой команде гребцы одновременно и быстро заносят лопасти к корме (при движении шлюпки назад — к носу) так, чтобы они были прижаты к борту в вертикальном положении. ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nДля возобновления, гребли предварительно подается команда ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "«Суши весла!» «Навались!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text: "или ",
                                              ),
                                              TextSpan(
                                                text: "«Легче гресть!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Эти команды подаются для увеличения или уменьшения скорости хода шлюпки. При выполнении этих команд установившийся темп гребли не меняется.",
                                              ),
                                              TextSpan(
                                                text: "\n\n«Весла на валек!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Гребцы, не вставая с мест, вынимают весла из уключин и ставят их вертикально лопастями вверх, развернув лопасти вдоль шлюпки. Внешняя рука гребца, вытянутая вдоль шлюпки, держит весло за «кожу», а другая рука — за валек. Корпус гребца при этом должен быть прямой, а голова повернута лицом в сторону кормы. Эта команда подается на шлюпках с вальковыми веслами для приветствия, при прохождении особо узких мест, линии финиша на гонках, а также при посадке в шлюпку большого числа людей. Как только минует надобность в этом приеме, подают команду ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "«Весла!» «Береги весла!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "Команда подается при опасении, что весла могут быть повреждены, задев за какой-нибудь предмет. Гребцы внимательно следят за лопастью своего весла, при необходимости несколько втягивают весло внутрь шлюпки или поднимают лопасть, пропуская гребок. ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\n«Весла под рангоут!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "(на шлюпках с вальковыми) или ",
                                              ),
                                              TextSpan(
                                                text: "«Весла под планширь!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "(на шлюпках с распашными веслами). Эти команды подаются для отдыха. Гребцы, не вынимая весел из уключин, закладывают их рукояти под рангоутный чехол (под планширь противоположного борта закладываются рукояти распашных весел). Лопасти должны быть подняты горизонтально на одном уровне. Обе эти команды подаются с положения, соответствующего команде «Суши весла!» После отдыха подается команда «Весла!», по которой гребцы принимают положение, соответствующее команде «Суши весла!»",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nПри снятии шлюпки с мели или прохождении мелководных участков подается команда ",
                                              ),
                                              TextSpan(
                                                text: "Весла на укол!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "По этой команде гребцы поднимают весла лопастями вверх, опускают их в воду и, упираясь рукоятями весел в грунт, стараются сдвинуть шлюпку с мели. Для продолжения гребли подается команда «Весла!» и т. д.",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nКоманда, поданная без указания борта, касается всех гребцов, а команда, предваряемая словом «правая» или «левая», касается только гребцов соответствующего борта.",
                                              ),
                                            ]),
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
                              "Управление шлюпкой на веслах",
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
                                                text: "При движении шлюпки ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "прямым курсом заданное направление удерживается по отдаленному неподвижному предмету, по компасу или створу. Возникающие отклонения от курса старшина шлюпки немедленно исправляет небольшим поворотом руля.",
                                              ),
                                              TextSpan(
                                                text: "\n\nУправление шлюпкой ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "по отдаленному предмету заключается в том, что ее форштевень должен все время удерживаться в створе с предметом.",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nУправление по створу ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "считается наиболее точным и удобным. В качестве створа можно использовать два отдаленных друг от друга береговых предмета, расположенных на одной линии с курсом шлюпки. Правят так, чтобы удерживать шлюпку на линии избранного створа. Если створные знаки или избранные в качестве створа предметы начнут расходиться, то нужно изменить курс в ту сторону, в которую отошел ближний (передний) знак от дальнего (заднего).",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nПри плавании на течении ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "необходимо курс шлюпки располагать так, чтобы дойти до намеченной точки кратчайшим путем. Угол сноса будет зависеть от скорости течения, скорости движения шлюпки и других факторов. Он подбирается опытным путем, сообразуясь с обстановкой, но в каждом случае курс располагается под некоторым углом к течению. Следуя на течении по створам, нос шлюпки не будет направлен на створ.",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nЧасто возникает необходимость резко изменить курс, развернуться с помощью весел на месте, остановить движение шлюпки и т. п. Чтобы сделать быстрый поворот, подается команда ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "«Правая (левая) — в воду!» ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "При наличии движения руль перекладывается в сторону того же борта. По окончании поворота подается команда «Обе — на воду!»-При необходимости сделать разворот шлюпки на месте гребцам каждого борта может быть подана отдельная команда. Первая команда обычно подается правому борту. В этом случае следует подать команды: ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "«Правая табань!» (или «Правая в воду!»), «Левая на воду!»\n\nПодход шлюпки к кораблю ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "осуществляется с кормы под углом 30 — 40° к его диаметральной плоскости. Учитывая инерцию движения, заранее подают команду «Шабаш!» и направляют шлюпку параллельно курсу корабля. Загребной ближнего к кораблю борта отпорным крюком задерживает корму шлюпки у трапа, а баковые принимают с корабля трос для крепления.",
                                              ),
                                              TextSpan(
                                                text:
                                                    "\n\nПодход к пирсу (стенке) ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "осуществляется таким же образом. Подойдя к пирсу, удерживают шлюпку отпорными крюками и высылают одного из баковых на берег для приема и крепления фалиней.",
                                              ),
                                            ]),
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
                              "Гребля в рафте",
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
                                        "Цикл движения включает в себя:\n"
                                        "\n⦁ Захват.\n"
                                        "\n⦁ Проводку.\n"
                                        "\n⦁ Занос весла.\n"
                                        "\nПроводка в свою очередь состоит из:\n"
                                        "\n⦁ Тяговой части.\n"
                                        "\n⦁ Выноса весла.\n"
                                        "\nСначала исходное положение для гребка. В рафте садятся на баллон сверху, свесив ноги внутрь рафта и уцепившись ступнями за какие-нибудь петельки. Туловище гребца вертикально, грудь перпендикулярна продольной оси рафта, плечи опущены, руки прямые, верхняя рука вытянута вперёд, кисть верхней руки расположена по высоте примерно на уровне подбородка, нижняя рука вытянута вниз и немного вперёд, лопасть весла погружена в воду максимально близко к гребцу так, чтобы древко не касалось баллона рафта.\n"
                                        "\nИз этого положения нужно сделать вынос и занос весла, то есть перейти к исходному положению для захвата. Корпус гребца наклоняется вперёд с одновременным разворотом плечевого пояса в сторону верхней руки. Одновременно с этим нижняя рука плавно, но быстро двигается вперёд-вверх по дуге, при этом в начале этого движения она сгибается в локте и затем выпрямляется. Верхняя рука двигается немного вверх и одновременно сгибается в локте. Кисть верхней руки во время заноса разворачивает лопасть весла внешним ребром вперёд. \n\nВ результате исходное положение для захвата выглядит следующим образом:"
                                        "\n\n⦁ по возможности, максимальный разворот плечевого пояса,\n"
                                        "\n⦁ при этом из-за наклона корпуса плечо верхней руки оказывается выше плеча нижней руки,\n"
                                        "\n⦁ локоть верхней руки не должен быть опущен ниже линии кисть – плечо,\n"
                                        "\n⦁ кисть расположена примерно на уровне лба по высоте,\n"
                                        "\n⦁ нижняя рука вытянута вперёд-вниз,\n"
                                        "\n⦁ лопасть весла почти касается воды.\n"
                                        "\nОсновные движения – захват и тяга. Они выполняются слитно и заканчиваются исходным положением для гребка, которое было описано выше.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                            children: [
                                              TextSpan(
                                                text: "\nЗахват ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "начинается разворотом плечевого пояса, разгибанием верхней руки вперёд (ни в коем случае не вверх), тягой прямой нижней руки вниз-назад и одновременным подъёмом туловища. Нужно стремиться к тому, чтобы верхняя рука разгибалась быстро, но плавно с усилием толкая ручку весла вперёд и не давая ей подняться вверх. Время, за которое рука выпрямится, должно составлять примерно треть от суммы движений захват – тяга. Нужно следить, чтобы нижнюю руку не сгибать в локте, и чтобы плечо не поднималось вверх. На самом деле нижняя рука должна сгибаться в самом конце гребка для того, чтобы удлинить тягу и сделать удобнее вынос весла. Но многие сгибают руку   слишком рано, и им трудно в дальнейшем отучиться от этой привычки. Поэтому сначала лучше приучить себя грести с прямой нижней рукой, и только потом начинать сгибать её в нужный момент. Такая последовательность намного облегчает процесс обучения.",
                                              ),
                                            ]),
                                      ),
                                      Text(
                                        "\nСамая большая ошибка новичков – попытка грести практически одной нижней рукой. Они держат верхнюю руку полностью согнутой в локте, и только нижней совершают и занос весла и непосредственно гребок. От такой работы рука очень быстро устаёт. Необходимо использовать обе руки, особенно во время заноса весла, а для этого стараться меньше сгибать верхнюю руку в локте и не опускать её вниз. Вторая очень распространённая ошибка – гребля согнутой в локте нижней рукой. Верхняя рука должна толкать, а нижняя – прямая – тянуть.\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2,
                                            children: [
                                              TextSpan(
                                                text: "Надо добиться ",
                                              ),
                                              TextSpan(
                                                text: "синхронной гребли ",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                text:
                                                    "всех членов экипажа. Когда правые и левые гребут, и начало гребка у них не совпадает по времени, или когда гребок одних длиннее гребка других, нос рафта совершает колебательные движения из стороны в сторону. Это сильно снижает скорость судна. Синхронность времени начала гребка и его продолжительности очень важна. Носовые гребцы должны смотреть друг на друга и следить за одновременным началом гребков. Средние смотрят на носовых, а кормовые на средних. Таким образом, лопасти всех должны входить в воду строго одновременно. Здесь очень многое зависит от первой пары – любая несогласованность приводит к потере скорости рафта. Очень важно предварительно договориться, кто на кого и когда смотрит и подстраивает свой гребок под гребок напарника.  Ошибки синхронности лучше всего видны с кормы, и рулевые в этих случаях должны подсказывать экипажу, кто кого опережает или отстаёт.",
                                              ),
                                            ]),
                                      ),
                                      Text(
                                        "\nКак забраться в рафт из воды:\n"
                                        "\n⦁ Взяться вытянутыми руками за обвязку рафта или за шнуровку дна (если рафт перевёрнут).\n"
                                        "\n⦁ Лечь на воду, стараясь, чтобы тело было расположено на поверхности воды.\n"
                                        "\n⦁ Подтянуться на руках, по возможности придав телу большую скорость и, сразу же вытолкнуть себя вверх - руки при этом остаются внизу в районе пояса. Это движение напоминает выход силой на перекладине.\n"
                                        "\n⦁ Когда верхняя часть туловища перевесит нижнюю, упасть внутрь рафта.",
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
                              "Сигналы бедствия",
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
                                        "SOS (СОС) — международный сигнал бедствия в радиотелеграфной (с использованием связи. Сигнал представляет собой последовательность «три точки — три тире — три точки», передаваемую без пауз между буквами . SOS не является аббревиатурой, это отдельный символ азбуки Морзе. Сигналы бедствия могут быть поданы и другими способами: выпуск клубов дыма оранжевого цвета; пламя от горящей смоляной бочки; ракеты, выбрасывающие красные звезды, выпускаемые поодиночке через короткие промежутки времени; красная парашютная ракета либо фальшфейер красного цвета; медленное, повторяемое поднятие и опускание рук, вытянутых в стороны; взрывы, производимые с промежутками около одной минуты; сигнальные костры, расположенные треугольником.",
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
