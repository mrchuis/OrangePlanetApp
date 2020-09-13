import 'package:flutter/material.dart';

class NavigatorStripe extends StatelessWidget {
  static const String routeName = "/Штурман";

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
                              "Штурман должен уметь",
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
                                    ),
                                    Text(
                                      "\n1. Выучить топографические знаки.\n"
                                      "\n2. Ознакомиться с картами района.\n"
                                      "\n3. Совместно с руководителем похода разработать и тщательно изучить географические и погодные особенности маршрута и график похода. Составить маршрутный лист.\n"
                                      "\n4. Обеспечить упаковку и хранение карт в походе.\n"
                                      "\n5. Уметь ориентироваться в поле и в лесу, определить на глаз расстояние, время, направление ветра.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "В походе:",
                                      style: Theme.of(context).textTheme.headline6, 
                                    ),
                                    Text(
                                      "\n1. Вести отряд.\n"
                                      "\n2. Показывать летописцу объекты съемок.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),  
                                    Text(
                                      "После похода:",
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    Text(
                                      "\n1. Сдать оставшиеся карты.\n"
                                      "\n2. Составить словесное описание маршрута.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),  
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Правила ориентирования на местности",
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
                                            text: "Самыми важными предметами для ориентирования являются карта и компас. Компас позволяет определить направление на север и двигаться на местности по выбранному азимуту. ",
                                          ),
                                          TextSpan(
                                            text: "Азимут ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– угол между направлением на север и заданным направлением на объект. Компас устанавливается горизонтально, вне зоны действия электро- и радиоприборов (это могут быть мобильный телефон, радио, рельсы, просто ключи в кармане). Красная стрелка указывает на север."
                                                  "\nКарта всегда напечатана таким образом, что верх карты – это направление на север, в случае если это не так, направление на север специально обозначается. Сориентировать карту - значит придать ей такое положение, при котором верх карты обращён на север, а изображённые на ней ориентиры соответствуют"
                                                  "ориентирам на местности. То есть, красная стрелка компаса должна смотреть на верх карты. Масштаб карты показывает, во сколько раз изображение местности уменьшено на карте. Например масштаб М 1: 10000 означает, что в 1 см на карте изображается 10000 см на местности. Для простоты мысленно убираем два последних нуля и сразу получаем метры, то есть в 1 см карты 100 метров местности. Старайтесь выработать \"память карты\", т.е. способность быстро запечатлевать и сохранять образ карты или местности в голове и реже обращаться к карте.",
                                          ),
                                        ]
                                      )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Условные обозначения",
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
                                      "Для каждого масштаба карты характерны свои специфические условные знаки, но в целом они идентичны.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: [
                                          TextSpan(
                                            text: "\nСиним цветом ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "обозначаются все гидрографические (водные) объекты, как то: реки, болота, озера и т.д.\n",
                                          ),
                                          TextSpan(
                                            text: "\nЖелтым цветом ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– открытые пространства (просеки, насыпи и т.д.).\n",
                                          ),
                                          TextSpan(
                                            text: "\nЧерным цветом ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– дороги и искусственные объекты (линии электропередач, дома и т.д.).\n",
                                          ),
                                          TextSpan(
                                            text: "\nЗеленым цветом ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– растительность и чем темнее и насыщенней цвет, тем гуще лес и труднее проходимость.\n",
                                          ),
                                          TextSpan(
                                            text: "\nКрасным ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– обозначение дистанции. Если крестик, то опасный для прохождения участок.\n",
                                          ),
                                          TextSpan(
                                            text: "\nКоричневым цветом ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– все элементы рельефа (ямы, холмы, обрывы, овраги, россыпи камней и т.д.).\n",
                                          ),
                                          TextSpan(
                                            text: "\nГоризонталь ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– замкнутая линия, которая соединяет все точки рельефа, находящиеся на одной высоте, это как бы горизонтальный «срез» земли.\n",
                                          ),
                                          TextSpan(
                                            text: "\nН – высота сечения рельефа",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ", показывает разницу высот между горизонталями. Например, если на карте холм изображён тремя горизонталями, то при Н=5 м, его высота будет 15 метров.\n",
                                          ),
                                          TextSpan(
                                            text: "\nБергштрих ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "– короткая, перпендикулярная горизонтали чёрточка, показывающая направление стока воды, то есть, даёт нам понять холм или яма изображены на карте.\n",
                                          ),
                                        ]
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/navigator/picture1.png',
                                      height: 450,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Ориентирование без компаса",
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
                                            text: "⦁ По солнцу. В полдень солнце достигает высшей точки своего подъема – ",
                                          ),
                                          TextSpan(
                                            text: "зенита",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ", тени становятся самыми короткими за день. Если встать спиной к солнцу, то впереди север, сзади – юг, справа – восток, слева – запад, как на карте (а в южном полушарии все наоборот).\n",
                                          ),
                                        ]
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/navigator/picture2.png',
                                      height: 210,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "\n⦁ По звездам. Для начала нужно уметь находить Большую и Малую медведицу. Конечная звезда хвоста Малой медведицы называется Полярной звездой. Ее можно найти, мысленно соединив две крайние звезды Большой медведицы и продолжив эту линию до первой яркой звезды – это и будет Полярная звезда. Если встать к ней лицом, то прямо перед тобой будет север.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Image.asset(
                                      'assets/images/navigator/picture3.png',
                                      height: 210,
                                      alignment: Alignment.topCenter,
                                    ),
                                    Text(
                                      "\n⦁ Все природные признаки сторон горизонта связаны с тем, что с юга – тепло, а с севера – холодно.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Image.asset(
                                      'assets/images/navigator/picture4.png',
                                      height: 120,
                                      alignment: Alignment.topCenter,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        style: Theme.of(context).textTheme.bodyText2,
                                        children: [
                                          TextSpan(
                                            text: "\n⦁ Муравейники",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ": более пологие к югу, лепятся к дереву (камню) с южной стороны. ",
                                          ),
                                          TextSpan(
                                            text: "\n\nЯгоды",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ": созревают быстрее с южной стороны. ",
                                          ),
                                          TextSpan(
                                            text: "\n\nЛишайники и мхи",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ": с северной стороны камней и деревьев. ",
                                          ),
                                          TextSpan(
                                            text: "\n\nСмола",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ": на хвойных деревьях выступает с севера.\n\nРанней весной ",
                                          ),
                                          TextSpan(
                                            text: "снег тает ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "быстрее на южных склонах; ",
                                          ),
                                          TextSpan(
                                            text: "лунки ",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "у деревьев вытянуты к югу.\n",
                                          ),
                                        ]
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/navigator/picture5.png',
                                      height: 120,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                          child: ExpansionTile(
                            title: Text(
                              "Техническое описание маршрута должно включать в себя",
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
                                      "⦁ Начальную и конечную точки маршрута.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Всевозможные подъезды.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Возможность использования аварийного транспорта по нитке маршрута.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Сведения о количестве участников группы.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Список всех преодоленных естественных препятствий.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Все точки пересадок с транспортных средств.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Важнейшие азимуты.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Пройденное расстояние и затраченное время.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Хронометраж времени, проведенного на привалах и отдыхе.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Описание метеоусловий на маршруте.\n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Приветствуется наличие расписания транспорта, магазинов, возможности общения с местным населением. \n",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "⦁ Необходимо четко представлять границы района ориентирования.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 2.0,
                            child: ExpansionTile(
                              //backgroundColor: Colors.orange[100],
                              title: Text(
                                "Техника ведения отряда",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                                  child: Text(
                                    "Обязательно наличие ведущего и замыкающего. Более сильные участники следуют в замыкающей группе, чтобы сохранять общий темп движения и, в случае чего, разгрузить уставших. Все участники должны находиться в визуальном контакте, не допускать разрывов. Схема движения отряда в походе: 30 минут перехода на 10 минут привала (для младшего возраста), 50 минут перехода на 10 минут привала (для взрослых). Раз в три перехода делается большой привал продолжительностью около часа.",
                                    style: Theme.of(context).textTheme.bodyText2,
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