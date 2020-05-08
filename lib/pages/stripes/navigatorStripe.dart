import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

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
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text(
                                  "Штурман должен уметь",
                                  style: GoogleFonts.pacifico(textStyle: Theme.of(context).textTheme.title),
                                ),
                                Text(
                                  "\nДо похода:",
                                  style: GoogleFonts.pacifico(
                                    textStyle: Theme.of(context).textTheme.title, 
                                    fontStyle: FontStyle.italic
                                  ),
                                ),
                                Text(
                                  "\n1. Выучить топографические знаки.\n"
                                  "\n2. Ознакомиться с картами района.\n"
                                  "\n3. Совместно с руководителем похода разработать и тщательно изучить географические и погодные особенности маршрута и график похода. Составить маршрутный лист.\n"
                                  "\n4. Обеспечить упаковку и хранение карт в походе.\n"
                                  "\n5. Уметь ориентироваться в поле и в лесу, определить на глаз расстояние, время, направление ветра.\n",
                                  style: GoogleFonts.pacifico(textStyle: Theme.of(context).textTheme.subhead),
                                ),
                                Text(
                                  "В походе:",
                                  style: GoogleFonts.pacifico(
                                    textStyle: Theme.of(context).textTheme.title, 
                                    fontStyle: FontStyle.italic
                                  ),
                                ),
                                Text(
                                  "\n1. Вести отряд.\n"
                                  "\n2. Показывать летописцу объекты съемок.\n",
                                  style: GoogleFonts.pacifico(textStyle: Theme.of(context).textTheme.subhead),
                                ),  
                                Text(
                                  "После похода:",
                                  style: GoogleFonts.pacifico(
                                    textStyle: Theme.of(context).textTheme.title, 
                                    fontStyle: FontStyle.italic
                                  ),
                                ),
                                Text(
                                  "\n1. Сдать оставшиеся карты.\n"
                                  "\n2. Составить словесное описание маршрута.\n",
                                  style: GoogleFonts.pacifico(textStyle: Theme.of(context).textTheme.subhead),
                                ),  
                              ],
                            ),
                          ),
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
                                  "Правила ориентирования на местности",
                                  style: GoogleFonts.pacifico(textStyle: Theme.of(context).textTheme.title),
                                ),
                                Text(
                                  "\nСамыми важными предметами для ориентирования являются карта и компас. Компас позволяет определить направление на север и двигаться на местности по выбранному азимуту. Азимут – угол между направлением на север и заданным направлением на объект. Компас устанавливается горизонтально, вне зоны действия электро- и радиоприборов (это могут быть мобильный телефон, радио, рельсы, просто ключи в кармане). Красная стрелка указывает на север."
                                  "Карта всегда напечатана таким образом, что верх карты – это направление на север, в случае если это не так, направление на север специально обозначается. Сориентировать карту - значит придать ей такое положение, при котором верх карты обращён на север, а изображённые на ней ориентиры соответствуют"
                                  "ориентирам на местности. То есть, красная стрелка компаса должна смотреть на верх карты. Масштаб карты показывает, во сколько раз изображение местности уменьшено на карте. Например масштаб М 1: 10000 означает, что в 1 см на карте изображается 10000 см на местности. Для простоты мысленно убираем два последних нуля и сразу получаем метры, то есть в 1 см карты 100 метров местности. Старайтесь выработать \"память карты\", т.е. способность быстро запечатлевать и сохранять образ карты или местности в голове и реже обращаться к карте.",                         
                                  style: GoogleFonts.pacifico(textStyle: Theme.of(context).textTheme.subhead),
                                ),
                               
                              ],
                            ),
                          ),
                        )
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