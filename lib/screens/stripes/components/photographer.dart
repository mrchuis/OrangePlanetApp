import 'package:flutter/material.dart';

class PhotographerStripe extends StatelessWidget {
  static const String routeName = "/Фотограф";

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
                                          "Фотография – это искусство. Человек, способный уловить и точно запечатлеть момент, который потом захочется рассматривать снова и снова – это фотограф. Основной творческий процесс здесь заключается в поиске и выборе композиции, освещения и момента (или моментов) фотоснимка. Такой выбор определяется умением и навыком фотографа, а также его личными предпочтениями и вкусом, что характерно для любого вида искусства.\n\nТермин «Фотография» означает рисование светом. Фотоаппарат фиксирует свет, попадающий через объектив, на матрицу или пленку, и на основе этого света формируется изображение.",
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
                                        "Теория:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n1. Знать устройство фотоаппарата, настройки фотоаппарата, принципы фотографии, законы композиции.\n",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                      Text(
                                        "Практика:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "\n1. Выполнить собственные работы по жанрам (портрет, натюрморт, пейзаж, флора и фауна, макросъёмка, репортаж).\n"
                                        "\n2. Провести фотосъемку похода или другого большого мероприятия, запечатлев все основные события. Составить фотоотчет, выбрав наиболее содержательные и удачные фотографии.\n"
                                        "\n3. Опубликовать свои фотографии в газете лагеря.",
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
                                "Устройство фотоаппарата",
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
                                          'assets/images/photographer/camera.png',
                                          //height: 120,
                                          alignment: Alignment.topCenter,
                                        ),
                                        Text(
                                          "\nC создания первого устройства фотоаппарата основная схема его работы почти не изменилась. Свет проходит через отверстие, масштабируется и попадает на светочувствительный элемент внутри устройства фотоаппарата, будь это пленочной камерой или зеркальной цифровой фотокамерой.\n"
                                          "\nНа рисунке – устройство зеркального цифрового фотоаппарата. Кратко принцип его работы можно описать так: свет проходит через объектив (цифра 1). Затем свет достигает диафрагмы, которая регулирует его количество (2). После этого свет доходит до зеркала в устройстве зеркального цифрового фотоаппарата, отражается и проходит через призму (4), которая перенаправляет его в видоискатель (5).\n"
                                          "\nВ момент, когда происходит фотографирование, зеркало (6) поднимается, открывается затвор фотоаппарата (7). В этот момент свет попадает прямо на матрицу фотоаппарата, и происходит фотографирование. Затем закрывается затвор, обратно опускается зеркало, и фотокамера готова к следующему снимку. Необходимо понимать, что весь этот сложный процесс внутри происходит за доли секунды.",
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
                                                  text:
                                                      "\nКорпус фотоаппарата (тело) ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "состоит из пластика или сплава магния, не пропускает свет.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nОбъектив ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " (1) состоит из системы линз. С помощью него изображение объектов съемки проецируется на матрицу.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nДиафрагма ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " (2) – это перегородка, которая находится внутри объектива, а также имеет вид лепестков. Они образуют отверстие, диаметр которого можно регулировать.\n",
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nПризма (пентапризма) ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " (4) – элемент, который переворачивает изображение.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nВидоискатель ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " (5) – своего рода «глазок», через который фотограф видит будущий снимок.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nМатрица (сенсор) ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " (8)  чувствует свет, заменяет в устройстве зеркального фотоаппарата пленку.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nКарта памяти ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "бережно хранит наши фотографии.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nЗатвор ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " (6) – это механические шторки, которые находятся между сенсором и зеркалом фотокамеры. В момент съемки они временно открываются таким образом, чтобы свет попал на матрицу.",
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
                                "Настройка фотоаппарата",
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
                                                  text: "Выдержка ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "– это время, на которое открывается затвор и приподнимается зеркало.  Чем меньше выдержка, тем меньше света попадет на матрицу. Чем больше время выдержки, тем больше света.\n",
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nСветочувствительность ISO ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "– чувствительность матрицы к свету. Максимальное ISO – матрица становится более чувствительной, и можно сделать снимок даже при малом свете. Но чем больше ISO, тем более «шумная», «зернистая» фотография.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nЭкспозиция ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "– ключевое понятие в фотографии. Формируется подбором комбинации выдержки и диафрагмы, которые еще называются «экспопара». Задача фотографа –  подобрать комбинацию так, чтобы обеспечить необходимое количество света для создания изображения на матрице.\n",
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nТочка фокусировки или просто фокус ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "– это та точка, на которую вы «навели резкость».",
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
                                "Дополнительное оборудование",
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
                                                      "Экспонометр и флешметр ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "– устройства для определения световых условий съёмки.\n",
                                                ),
                                                TextSpan(
                                                  text:
                                                      "\nОсветительное оборудование. ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "Для съёмки в условиях недостаточной освещённости используются различные осветительные приборы и отражатели. Наиболее массовыми среди них стали фотовспышки.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nШтативы ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "используются для предотвращения «смаза» при недостаточной освещённости, съемке панорам, при больших выдержках, для установки дополнительного осветительного оборудования, для многократной съемки на один кадр и т. д.\n",
                                                ),
                                                TextSpan(
                                                  text: "\nСветофильтры ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "используются для компенсации цветовых и пространственных недостатков освещения, получения специальных эффектов.",
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
                                "Композиция",
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
                                                  text: "Композиция ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "(от лат. compositio) означает составление, соединение, сочетание различных частей в единое целое в соответствии с какой-либо идеей.\n",
                                                ),
                                              ]),
                                        ),
                                        Text(
                                          "Перед тем как жать на кнопку затвора камеры, определитесь со смысловым центром и найдите его в окружающем пространстве, выделите мысленно, что является главным, самым интересным для вас. Далее воспользуйтесь правилом золотого сечения или правилом третей. В чем его смысл? Пространство кадра мысленно разбивается двумя горизонтальными и двумя вертикальными линиями на равные части. Из трех горизонтальных и трех вертикальных полос получается некая сетка с точками пересечения линий.\n",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        Image.asset(
                                          'assets/images/photographer/composition.png',
                                          //height: 120,
                                          alignment: Alignment.topCenter,
                                        ),
                                        Text(
                                          "\nНаиболее важные элементы кадра рекомендуют располагать вдоль этих линий или же в точках их пересечения. Дело в том, что подобная асимметрия изображения воспринимается более естественно.",
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
                                "Типичные композиционные ошибки",
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
                                          "⦁ Обрезанные части людей или достопримечательностей.\n"
                                          "\n⦁ Нарушение пропорций тела человека (например, при съемке сверху человек будет казаться с большой головой и короткими ногами).\n"
                                          "\n⦁ «Заваливание» горизонта (непараллельность линии горизонта на фотографии горизонтали на мониторе).\n"
                                          "\n⦁ Нахождение в кадре постороннего объекта.\n"
                                          "\n⦁ Несбалансированная композиция (Расположение по центру кадра – пожалуй, самая известная и самая распространенная ошибка).\n"
                                          "\n⦁ Пустая или перегруженная композиция, когда в кадре либо много пустого места, либо, напротив, «фотомусора» (ярких и привлекающих внимание элементов кадра, никак не относящихся к основной идее именно этой фотографии).",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
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
