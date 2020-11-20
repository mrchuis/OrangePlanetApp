import 'package:flutter/material.dart';

class DoctorStripe extends StatelessWidget {
  static const String routeName = "/Медик";

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
                              "Состояния, при которых оказывается первая помощь",
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
                                      "1. Отсутствие сознания.\n"
                                      "\n2. Остановка дыхания и кровообращения.\n"
                                      "\n3.	Наружные кровотечения.\n"
                                      "\n4.	Инородные тела верхних дыхательных путей.\n"
                                      "\n5.	Травмы различных областей тела.\n"
                                      "\n6.	Ожоги, эффекты воздействия высоких температур, теплового излучения.\n"
                                      "\n7.	Отморожение и другие эффекты воздействия низких температур.\n"
                                      "\n8.	Отравления.\n"
                                      "\n9.	Приступ Бронхиальной астмы.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Мероприятия по оказанию первой помощи проводятся в следующем порядке",
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
                                      "1. Мероприятия по оценке обстановки и обеспечению безопасных условий для оказания первой помощи.\n"
                                      "\n2. Определение наличия сознания у пострадавшего, определение признаков жизни у пострадавшего.\n"
                                      "\n3.	Мероприятия по обзорному осмотру пострадавшего и временной остановке наружного кровотечения.\n"
                                      "\n4.	Проведение сердечно-легочной реанимации до появления признаков жизни.\n"
                                      "\n5.	Мероприятия по подробному осмотру пострадавшего в целях выявления признаков травм, отравлений и других состояний, угрожающих его жизни и здоровью, и по оказанию первой помощи в случае выявления указанных состояний.\n"
                                      "\n6.	Наложение повязок при травмах различных областей тела, в том числе окклюзионной (герметизирующей) при ранении грудной клетки.\n"
                                      "\n7.	Проведение иммобилизации.\n"
                                      "\n8.	Придание пострадавшему оптимального положения тела.\n"
                                      "\n9. Контроль состояния пострадавшего (сознание, дыхание, кровообращение) и оказание психологической поддержки.\n"
                                      "\n10. Передача пострадавшего бригаде скорой медицинской помощи, другим специальным службам, сотрудники которых обязаны оказывать первую помощь в соответствии с федеральным законом или со специальным правилом.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ]
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (материалы и другое)",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Материалы и другое',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Термометр')),
                                              DataCell(Text('1 шт.')),
                                              DataCell(Text('Измеряем температуру')),
                                              DataCell(Text('Хорошо упаковать')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Вата')),
                                              DataCell(Text('2-3 уп.')),
                                              DataCell(Text('Повязки, обработка')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Бинт стерильный\n(2: 5-7см; 3: 10-14см)')),
                                              DataCell(Text('5 шт.')),
                                              DataCell(Text('Повязки')),
                                              DataCell(Text('Следить за герметичностью упаковки\nи сохранением стерильности')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Бинт эластичный')),
                                              DataCell(Text('1-2 шт.')),
                                              DataCell(Text('Компрессионные повязки')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Лейкопластырь\nбактерицидный')),
                                              DataCell(Text('10-15 шт.')),
                                              DataCell(Text('Мозоли, ранки')),
                                              DataCell(Text('Менять раз в день')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Лейкопластырь\nрулонный')),
                                              DataCell(Text('1 рулон')),
                                              DataCell(Text('Фиксация')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Р-р йода 5% или\nЗеленка')),
                                              DataCell(Text('1 фл.')),
                                              DataCell(Text('Обработка краев ран')),
                                              DataCell(Text('Не использовать в саму рану и на\nместах с длительным наложением\nповязок, т.к. возможен ожог')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Ватные палочки ')),
                                              DataCell(Text('1 уп.')),
                                              DataCell(Text('Компрессионные повязки')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Хлоргексидин')),
                                              DataCell(Text('2-3 бут.')),
                                              DataCell(Text('Промывание ран')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Перчатки ')),
                                              DataCell(Text('2 пары')),
                                              DataCell(Text('При контакте с кровью')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Нашатырь')),
                                              DataCell(Text('1 бут.')),
                                              DataCell(Text('При обморочных состояниях нанести\nнебольшое количество на ватку,\nподнести к носу, растереть виски ')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Жгут')),
                                              DataCell(Text('1 шт.')),
                                              DataCell(Text('Остановка арт. кровотечения')),
                                              DataCell(Text('Обязательно на одежду/ткань;\nуказать время наложения')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Ножницы')),
                                              DataCell(Text('1 шт.')),
                                              DataCell(Text('')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('«Звездочка»')),
                                              DataCell(Text('1 шт.')),
                                              DataCell(Text('Хорошо помогает в ситуациях, когда\nнужно «прогреть» определенную\nчасть тела')),
                                              DataCell(Text('Не допускать попадание на\nслизистые или в раны')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Дефислез (глаз. капли)')),
                                              DataCell(Text('1 фл.')),
                                              DataCell(Text('При синдроме сухого глаза. 1-2 капли\nзакапывают 4-8 раз в сутки в\nконъюнктивальный мешок')),
                                              DataCell(Text('Не рекомендуется при ношении\nмягких контактных линз.')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Борная кислота ')),
                                              DataCell(Text('1 фл.')),
                                              DataCell(Text('При отитах 2-3 кап. 4 р./день')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                        ],
                                    ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (желудочно-кишечный тракт)",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Препарат',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Уголь актив.')),
                                              DataCell(Text('100 табл.')),
                                              DataCell(Text('При отравлениях: 1 таблетка на 10 кг. веса;\nможно размельчить')),
                                              DataCell(Text('Другие препараты не применять,\nт.к. уголь адсорбент')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Дротаверин (Но-Шпа)')),
                                              DataCell(Text('20 табл.')),
                                              DataCell(Text('При спазмах, коликах, болях в животе.\n1 табл. 3 р./день')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Иммодиум ')),
                                              DataCell(Text('20 табл.')),
                                              DataCell(Text('При острой диарее. 2 табл., затем по 1 табл.\nпосле каждого стула (но не раньше, чем через\n30 мин. после первого приема). До 8 табл./сут.')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Смекта ')),
                                              DataCell(Text('5 пак.')),
                                              DataCell(Text('При диарее. Содержимое 1 пак. развести в 1/2\nстакане слегка тёплой воды, пить небольшими\nглотками')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Регидрон ')),
                                              DataCell(Text(' 2 пак.')),
                                              DataCell(Text('При диарее. Содержимое одного пакетика\nразвестив 1 л. воды, пить небольшими\nглотками')),
                                              DataCell(Text('Пить после прекращени\nприступов диареи')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Фталазол')),
                                              DataCell(Text('20 табл.')),
                                              DataCell(Text('При киш инфекциях. Принимать по 1 табл.\n4 р./день(в первый день — до 6 табл.)')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (обезболивающие, жаропонижающее)",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Препарат',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Уголь актив.')),
                                              DataCell(Text('100 табл.')),
                                              DataCell(Text('При отравлениях: 1 таблетка на\n10 кг. веса; можно размельчить')),
                                              DataCell(Text('Другие препараты не применять,\nт.к. уголь адсорбент')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Дротаверин (Но-Шпа)')),
                                              DataCell(Text('20 табл.')),
                                              DataCell(Text('При спазмах, коликах, болях\nв животе. 1 табл. 3 р./день')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (сердечно-сосудистая система)",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Препарат',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Нитроглицерин ')),
                                              DataCell(Text('10 табл.')),
                                              DataCell(Text('При сильных, сжимающих, давящих, жгучих болях в грудной клетке, отдающие\nиногда в левую лопатку, межлопаточное пространство, левую подмышечную\nобласть. 1 табл. под язык, при неэффективности повторить через 5-7 минут')),
                                              DataCell(Text('При данных симптомах обеспечить\nчеловеку покой, мин. физ. нагрузок')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Валидол')),
                                              DataCell(Text('')),
                                              DataCell(Text('При болях в сердце. Сублингвально (под язык),\nпо 1 таблетке 2–3 раза в день.')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (противоаллергическое)",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Препарат',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Супрастин   (Кларитин)')),
                                              DataCell(Text('10 табл.')),
                                              DataCell(Text('При аллергиях различного происхождения \n(пищевая/бытовая/лекарственная аллергии, аллергии\nна укусы насекомых, крапивница). 1 табл 1р/день')),
                                              DataCell(Text('Кларитин лучше, тк вызывает\nменьше седации ')),
                                            ],
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (дыхательная система )",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Препарат',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Мукалтин')),
                                              DataCell(Text('20 табл.')),
                                              DataCell(Text('При непродуктивном (без макроты)\nкашле. 1 табл 3 р./день')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Фурацилин')),
                                              DataCell(Text('20 табл.')),
                                              DataCell(Text('Раствор для полоскания: 4 табл в 1\nстакане воды. При ангине полоскать\n6-8 р./день')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Пиносол')),
                                              DataCell(Text('1 фл.')),
                                              DataCell(Text('При рините. 1 доза в каждый носовой\nход 3 р./сут.')),
                                              DataCell(Text('Содержит растительные компоненты! Нельзя\nприменять, если есть аллергия на\nразличные растения (деревья, цветы, травы)')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Ингалипт')),
                                              DataCell(Text('1 фл.')),
                                              DataCell(Text('Пшикнуть 2-3 р./день ')),
                                              DataCell(Text('Если есть, лучше взять. А так есть фурацилин.\nПеред применением лучше прополоскать горло\nслабо солевым раствором')),
                                            ],
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                              ),
                            ]
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Аптечка (травмы)",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: DataTable(
                                        columns: const <DataColumn>[
                                          DataColumn(
                                            label: Text(
                                              'Препарат',
                                              //style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Кол-во',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Когда и как применять',
                                              //style: TextStyle(fontStyle: FontStyle.italic),
                                            ),
                                          ),
                                          DataColumn(
                                            label: Text(
                                              'Важно',
                                              //style: TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                        rows: const <DataRow>[
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Вольтарен')),
                                              DataCell(Text('1 туба')),
                                              DataCell(Text('При болях в суставах, гематомы. Не более 0,5 см столбика\nна одно место, 2-3 раза в день; хорошо растереть')),
                                              DataCell(Text('Не применять при ушибах, так как обладает\nразогревающим эффектом. Не допускать\nпопадание на слизистые или в раны')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Д-пантенол, Бепантен')),
                                              DataCell(Text('1 туба')),
                                              DataCell(Text('При ожогах (в т.ч солнечных). Нанести небольшим слоем на поврежденный\nучасток кожи. В первый день повторять каждые 4-5 часов. При заживлении\nран - нанести небольшое количество на повреждённую кожу')),
                                              DataCell(Text('')),
                                            ],
                                          ),
                                          DataRow(
                                            cells: <DataCell>[
                                              DataCell(Text('Стрептоцид (табл.) или\nбанеоцин')),
                                              DataCell(Text('10 табл./1 бут.')),
                                              DataCell(Text('При мокнущих, плохозаживающих повреждениях кожи ')),
                                              DataCell(Text('Сразу не бинтовать, дать подсохнуть')),
                                            ],
                                          ),
                                        ],
                                      ),
                                  ),
                                ),
                              ),
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