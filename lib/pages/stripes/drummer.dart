import 'package:flutter/material.dart';

class DrummerStripe extends StatelessWidget {
  static const String routeName = "/Барабанщик";

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
                                // Text(
                                //   "headline5",
                                //   style: Theme.of(context).textTheme.headline5,
                                // ),
                                // Text(
                                // "\nheadline6",
                                // style: Theme.of(context).textTheme.headline6,                               
                                // ),
                                Text(
                                  "Барабанщик не просто играет на построении или идет впереди отряда на марше. Музыка воодушевляет людей, придает большую торжественность при подъеме флага или вручении награды, но этого мало. Исторически сложилось так, что барабанщики и горнисты всегда поднимали войска в атаку. Мы ни с кем не воюем, но барабанщики по-прежнему должны подниматься первыми навстречу трудностям (взяться за важное поручение, сказать вслух про несправедливость, кому-то помочь и т.д.). Иначе это не барабанщики, а всего лишь люди, умеющие играть на барабане.",
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
                                  "Барабанщик должен",
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                                Text(
                                "\nТеория:",
                                style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\n1. Понимать значения терминов «символы» и «ритуалы».\n"
                                  "\n2. Знать государственную символику.\n"
                                  "\n3. Знать правила проведения построения.\n"
                                  "\n4. Знать историю возникновения барабана.\n"
                                  "\n5. Знать устройство барабана.\n"
                                  "\n6. Знать правила обращения с барабаном.",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                "\nПрактика:",
                                style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\n1. Уметь показывать знаки барабанщиков, переходы барабана.\n"
                                  "\n2. Соблюдать правила игры на барабане, знать команды барабанщиков.\n"
                                  "\n3. Уметь играть не менее семи маршей.\n"
                                  "\n4. Уметь играть на ходу.\n",
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Text(
                                  "\nПосле того, как барабанщик сдал теорию и практику, ведущий барабанщик разрешает ему игру на построении. Нашивка барабанщика вручается всем сдавшим теорию, практику и игравшим на построении хоть один раз. Посвящение в барабанщики на рассвете дает право быть ведущим барабанщиком.",
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
                                // Text(
                                //   "headline5",
                                //   style: Theme.of(context).textTheme.headline5,
                                // ),
                                Text(
                                  "Полезная информация",
                                  style: Theme.of(context).textTheme.headline6,                               
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: [
                                      TextSpan(
                                        text: "\nСимволы ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "– слова, предметы или действия, обозначающие какие-то важные понятия для мира, страны, общества, коллектива и т.д. Символы подчеркивают общие ценности, объединяют людей на основе общих целей и заповедей. Символами, например, являются следопытский галстук, законы и заповеди следопытов, Праздник первого костра и др.\n",
                                      ),
                                      TextSpan(
                                        text: "\nРитуалы ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "– традиционные действия, носящие символический характер. Ритуалы в лагере – это подъем флага, произнесение лагерного девиза, церемония посвящения в следопыты и др. У каждого государства есть свои символы и ритуалы.\n",
                                      ),
                                      TextSpan(
                                        text: "\nГосударственный герб Российской Федерации ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "выглядит так: золотой двуглавый орел на красном щите; над орлом — три короны Петра I (над головами — две малые и над ними — одна большего размера); в лапах орла — скипетр и держава; на груди орла на красном щите — всадник, поражающий копьем змея.\n",
                                      ),
                                      TextSpan(
                                        text: "\nГосударственный флаг России",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: ": прямоугольное полотнище из трех равновеликих горизонтальных полос: верхней — белого, средней — синего и нижней — красного цвета.\n",
                                      ),
                                      TextSpan(
                                        text: "\nГосударственный гимн Российской Федерации ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "создан на основе советского гимна (музыка Александра Александрова /1939 год/, слова Сергея Михалкова /2000 год/).\n",
                                      ),
                                      TextSpan(
                                        text: "\nРоссия — священная наша держава,\n"
                                        "Россия — любимая наша страна.\n"
                                        "Могучая воля, великая слава —\n"
                                        "Твое достоянье на все времена!\n"
                                        "\nСлавься, Отечество наше свободное,\n"
                                        "Братских народов союз вековой,\n"
                                        "Предками данная мудрость народная!\n"
                                        "Славься, страна! Мы гордимся тобой!\n"
                                        "\nОт южных морей до полярного края\n"
                                        "Раскинулись наши леса и поля.\n"
                                        "Одна ты на свете! Одна ты такая -\n"
                                        "Хранимая Богом родная земля!\n"
                                        "\nСлавься, Отечество наше свободное,\n"
                                        "Братских народов союз вековой,\n"
                                        "Предками данная мудрость народная!\n"
                                        "Славься, страна! Мы гордимся тобой!\n"
                                        "\nШирокий простор для мечты и для жизни\n"
                                        "Грядущие нам открывают года.\n"
                                        "Нам силу дает наша верность Отчизне.\n"
                                        "Так было, так есть и так будет всегда!\n"
                                        "\nСлавься, Отечество наше свободное,\n"
                                        "Братских народов союз вековой,\n"
                                        "Предками данная мудрость народная!\n"
                                        "Славься, страна! Мы гордимся тобой!\n"
                                      ),
                                      TextSpan(
                                        text: "\nУ барабанщиков России тоже есть свой гимн ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "(музыка Григория Рейхтмана, слова Владислава Крапивина /1970 год/).\n",
                                      ),
                                      TextSpan(
                                        text: "\nКак бы крепко ни спали мы,\nНам подниматься первыми —\nЛишь только рассвет забрезжит\nВ серой весенней дали…\nЭто неправда, что маленьких\nСмерть настигает реже:\nВедь пулеметы режут\nЧасто у самой земли.\nЕсть про нас песни разные —\nСложенные с любовью,\nЕсть грустные и бодрящие,\nЗвонкие, как труба,\nТолько нигде не сказано,\nКак это все-таки больно —\nПулю глотнув горячую,\nПадать на барабан.\nСколько легло нас, мальчики,\nВ травах и узких улицах —\nМаленьких барабанщиков,\nРыцарей ярых атак!\nНо не могли мы кланяться,\nЖмуриться и сутулиться,\nПадали… А товарищи\nШли, отбивая такт…\nФлаги рассвета алые\nНад городами полощутся…\nСнова сегодня встали мы\nРаньше всех поутру.\nВновь\nбарабаны взяли мы.\nСнова\nвыходим на площади —\nТуда, где отряды сходятся\nВ марше серебряных труб.\nМожет быть, все исполнится:\nТравы не вытопчет конница,\nИ от ударов пушечных\nБольше земля не сгорит.\nНо про тревогу помни ты,\nПомни про нашу бессонницу,\nКогда барабан игрушечный\nСыну решишь подарить…\nЭто слова прощания,\nЭто песня привета\nТем, кто шагал с нами рядом,\nОт ветра не пряча взгляд.\nГорьким горнов молчанием\nБудет слава пропета\nВсем сгоревшим отрядам —\nМаленьким кораблям.",
                                      ),
                                      TextSpan(
                                        text: "\n\nИстория барабана.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Первые упоминания об этих музыкальных инструментах встречаются в древнем Египте, Месопотамии, Шумере (начиная с 5 века до нашей эры). Существует множество легенд об изобретении барабанов (например, к появлению первых ударных привел случайный удар по выдолбленной тыкве или высушенной коже крокодила). Древние племена использовали барабаны при обрядовых танцах и для быстрой передачи сигналов опасности. В современном мире даже существует целая наука – драммология (наука об языке барабанных сигналов). В Европе барабаны активнее всего применялись в немецкой армии. Средневековые барабаны были огромными (их так и называли «большими» или «турецкими»), но постепенно сформировался и тип малого (маршевого) барабана. В России барабаны впервые появляются в полках, сформированных по примеру нидерландских войск (начало XVII века), более распространены они стали в эпоху Ивана Грозного («бубны»). Большую популярность барабаны имели в армии Петра I, который сам хорошо барабанил. У российских скаутов были синие маршевые барабаны, пионерские отряды ввели такие же инструменты, но с красным ободом. Одним из первых пионерских журналов был «Барабан» (1923-1926 годы).\n",
                                      ),
                                      TextSpan(
                                        text: "\nУстройство барабана.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Полый фанерный или пластиковый корпус, внутри которого находится пружина, сбоку – отверстие для выхода воздуха. Обручи сверху и снизу закрепляют натянутую мембрану (из кожи или пластика); обручи скрепляются зажимами. К зажимам присоединяется ремень с гнездами для палочек и пряжкой-регулятором длины ремня.\n",
                                      ),
                                      TextSpan(
                                        text: "\nПравила обращения с барабаном.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Барабан хранится в сухом теплом проветриваемом помещении, в вертикальном положении, с заправленным под зажим ремнем. Горизонтальное положение барабана приводит к провисанию мембраны, ухудшению звука и в конечном итоге к порче музыкального инструмента. Провислость мембраны регулируется натяжением (ослаблением) зажимов; кожа (пластик) должна быть натянута. Игра под дождем или в сырость губительна для барабана. На маршевом барабане играют специальными палочками, а не руками (иначе точка удара будет слишком большой, и кожа легко прорвется). Барабанщик не должен допускать слишком сильных и резких ударов по коже, иначе можно прорвать ее. Барабанщик хранит барабан от желающих просто так ударить по нему, от попадания на инструмент воды, прямого солнечного света и искр костра. Если барабан взят в поход, хранится он в палатке, в вертикальном положении, укутанным чем-то теплым от ночных перепадов температуры.\n",
                                      ),
                                      TextSpan(
                                        text: "\nПравила игры на барабане.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Барабанщики начинают и заканчивают игру в соответствии со знаками ведущего барабанщика. Главное достоинство сводного отряда (патруля) барабанщиков – слаженная и четкая игра. На барабане играют с той стороны мембраны, где натянута пружина. Палочка, ударяя по коже, вызывает колебание пружины, а с ним – резкий колеблющийся звук. На маршевых барабанах можно играть по нотам, а можно – по текстовкам маршей. Каждое слово в марше разбивается на слоги. Один слог – один удар. Все марши начинаются и заканчиваются играть с правой руки (исключение делается для левшей). Слоги «бей, ба» играются двойным ударом правой руки. При игре на два и несколько голосов особое внимание должно уделяться сыгранности группы. На барабане можно менять силу звука: чем ближе к середине, тем громче звучание, и наоборот. При ходьбе с барабаном первый удар (правой рукой) и первый шаг (правой ногой) должны совпасть.\n",
                                      ),
                                      TextSpan(
                                        text: "\nПереходы барабана.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Существуют походное и боевое положения барабанов. Чтобы перевести барабан в другое положение, барабанщик должен знать правила переходов. Голосовые сигналы в виде счета подает ведущий барабанщик.\n",
                                      ),
                                      TextSpan(
                                        text: "\nПоходное положение.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Барабанщик стоит, расставив ноги. Барабан висит у него на правом боку, ремень перекинут через левое плечо. Правая рука барабанщика согнута и лежит на верхней части корпуса барабана, левая с зажатыми палочками (палочки соединены валетом, параллельно ногам) вытянута и прижата к левому боку.\n",
                                      ),
                                      TextSpan(
                                        text: "\nПереход из походного в боевое положение:\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "«Раз»: ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "правая рука барабанщика берется за нижний обод.\n",
                                      ),
                                      TextSpan(
                                        text: "«Два»: ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "правая рука берется за обод барабана и переводит его вперед, в боевое положение. Левая рука по-прежнему вытянута и прижата к левому боку.\n",
                                      ),
                                      TextSpan(
                                        text: "«Три»: ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "левая рука с палочками переносится на корпус барабана. При этом палочки берутся обеими руками так, чтобы при начале игры палочки не пришлось перекручивать.\n",
                                      ),
                                      TextSpan(
                                        text: "\n\"Боевое\" положение.\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Барабанщик стоит, расставив ноги. Барабан висит перед ним, ремень перекинут через левое плечо. Руки с палочками (сложенными параллельно) лежат на мембране.\n",
                                      ),
                                      TextSpan(
                                        text: "\nПереход из боевого в походное положение:\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "«Раз»: ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "правая рука берется за край обруча, дальний от барабанщика. Левая рука с параллельно сжатыми палочками опускается и вытягивается вдоль левого бока.\n",
                                      ),
                                      TextSpan(
                                        text: "«Два»: ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "правая рука переводит барабан в походное положение и остается держать низ обруча. Левая рука остается неподвижной.\n",
                                      ),
                                      TextSpan(
                                        text: "«Три»: ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "правая рука сгибается и кладется на верхнюю часть обруча.\n",
                                      ),
                                      TextSpan(
                                        text: "\nЗнаки барабанщиков ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "(подает ведущий барабанщик)\n"
                                        "Поднятая над головой вверх правая палочка: "
                                      ),
                                      TextSpan(
                                        text: "«Внимание!»\n",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "Поднятая над головой вверх правая палочка, полукруг вверху и резкий бросок палочки вниз: "
                                      ),
                                      TextSpan(
                                        text: "«Снять игру!»\n",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "Скрещенные над головой две палочки: "
                                      ),
                                      TextSpan(
                                        text: "«Немедленная тишина!»\n",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "\nКоманды барабанщиков  ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "(подает ведущий барабанщик)\n"
                                      ),
                                      TextSpan(
                                        text: "«К бою!». ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "Команда подается при боевом положении сводного отряда. Барабанщики разнимают палочки, не поднимая их с мембраны, так, чтобы в каждой руке оказалась палочка.\n"
                                      ),
                                      TextSpan(
                                        text: "«Начали!». ",
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      TextSpan(
                                        text: "Команда для одновременного начала игры."
                                      ),
                                    ],
                                 ),
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
                                "Правила проведения построения",
                                style: Theme.of(context).textTheme.headline6,                               
                                ),
                                Text(
                                  "\nНа построении барабанщики выстраиваются в одну линию или (если их много) в два ряда перед вожатской трибуной. На правом фланге стоит ведущий барабанщик. Барабанщики в течение всего построения должны внимательно слушать все команды ведущего барабанщика и четко выполнять их. Сводный отряд барабанщиков выполняет и общелагерные команды (равняйсь, смирно, вольно, сдать рапорты и пр.). В орлятский круг с барабанами не встают, но слова девиза повторяют. На построении барабанщики играют перед началом (марши для сбора), во время построения (дробь под подъем или спуск флага, марши под награждение), в конце построения (марши для роспуска отрядов). Если барабанщика вызвали из строя (например, получить награду), он самостоятельно переводит барабан из боевого положения в походное и делает шаг из строя. Остальные барабанщики строй не смыкают, т.к., вернувшись, барабанщик встанет на свое место.",
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
                                "Марши\n",
                                style: Theme.of(context).textTheme.headline6,                               
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: Theme.of(context).textTheme.bodyText2,
                                    children: [
                                      TextSpan(
                                        text: "1. Знаменный\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Кем был, кем был\nСтарый барабанщик?\nЧем был, чем был\nСтарый барабан?\n"
                                      ),
                                      TextSpan(
                                        text: "\n2. Старый пионерский\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Старый барабанщик,\nСтарый барабанщик,\nДолго спал.\n"
                                      ),
                                      TextSpan(
                                        text: "\n3. Орлятский-1\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "На линейку,\nНа линейку,\nНа линейку,\nБарабанщик, барабанщик,\nНа линейку,\nНа линейку,\nНа линейку,\nСтарый барабан.\n"
                                      ),
                                      TextSpan(
                                        text: "\n4. Походный-1\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Бей, барабанщик,\nБей, барабанщик,\nБей, барабанщик,\nРаз, два, три.\n"
                                      ),
                                      TextSpan(
                                        text: "\n5. Марш комсоргов\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Бей, бей, бей,\nБей, барабанщик, бей.\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабанщик, бей.\n"
                                      ),
                                      TextSpan(
                                        text: "\n6. Отбивка комсоргов ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "(играется вторым голосом с маршем комсоргов)\nГромче, громче,\nБей, барабанщик,\nБей, барабанщик,\nБей, барабанщик,\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабанщик,\nРаз, два, раз, два (играется палочкой о палочку).\n"
                                      ),
                                      TextSpan(
                                        text: "\n7. Суворовский ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "(совместим с Морским)\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабанщик,\nРаз, два, раз, два.\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабанщик,\nРаз, два, три\n"
                                      ),
                                      TextSpan(
                                        text: "\n8. Морской ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "(совместим с Суворовским)\nРаз, два,\nБей, барабан.\nГромче, громче,\nБей, барабан.\nГромче, барабанщик,\nГромче, барабанщик,\nГромче, громче,\nБей, барабан.\n"
                                      ),
                                      TextSpan(
                                        text: "\n9. Рассветный ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "(играется прежде всего на посвящении в барабанщики)\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабан,\nБарабанщик, бей.\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабан,\nБарабанщик, бей.\nБарабанщик, барабанщик, бей (последний слог – две палочки о барабан),\nРаз, два, три (палочка о палочку),\nБарабанщик, барабанщик, бей (последний слог – две палочки о барабан),\nРаз, два, три (палочка о палочку),\nБей, барабан,\nБей, барабан,\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабан,\nБарабанщик, бей.\n"
                                      ),
                                      TextSpan(
                                        text: "\n10. Гвардейский\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "Пра-ле, пра-пра-ле (пра – правая рука, ле – левая рука),\nПра-бей, барабан (пра-бей-ба – тройной удар правой рукой),\nСтарый-старый барабанщик.\nПра-ле, пра-пра-ле,\nПра-бей, барабан,\nСтарый-старый барабан.\n"
                                      ),
                                      TextSpan(
                                        text: "\n11. Содружество\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "Со-дру-жест-во,\nБей, барабан, барабань, барабанщик.\nСо-дру-жест-во,\nБей, барабан, барабанщик, бей.\nБарабанщик, барабанщик, ты во-жа-тый.\nБарабанщик, барабанщик, ты во-жак.\nБей, барабан,\nБей, барабан,\nБей, барабанщик,\nСтарый барабанщик,\nБей, барабан,\nБарабанщик, бей.\n"
                                      ),
                                      TextSpan(
                                        text: "\n12. Звездная атака\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "Первый голос (начинает первым). Раз, два, раз-два-три.\nВторой голос (вступает после полного такта первого голоса):\nБей, бара-бара-бара,\nБей, бара-бара-бара,\nБей, барабан, барабан, бара-бара-бара,\nБей, бара-бара-бара,\nБей, бара-бара-бара,\nБей, барабан, барабан,\nРаз, два (палочка о палочку).\n"
                                      ),
                                      TextSpan(
                                        text: "\n13. Африка ",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "(для вручениия наград на построении).\nВ Аф-ри-ке слоники живут (в Аф-ри-ке играются вместе двумя палочками о барабан),\nОни до неба достают\nИ поднимают хо-бо-ты (хоботы играются вместе двумя палочками о барабан).\n"
                                      ),
                                      TextSpan(
                                        text: "\n14. Звездный\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "Бей, барабанщик,\nБей, барабанщик,\nБей, барабанщик,\nРаз, два, три.\nБей, барабанщик,\nБей, барабанщик,\nСтарый барабанщик,\nРаз, два, три.\nБей, барабанщик,\nСтарый барабанщик,\nСтарый барабанщик,\nРаз, два, три.\nСтарый барабанщик,\nСтарый барабанщик,\nСтарый барабанщик,\nРаз, два, три.\n"
                                      ),
                                      TextSpan(
                                        text: "\n15. Общий сбор\n",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                       text: "Бей, барабанщик, барабань,\nБей, барабанщик, барабань,\nБей, барабанщик,\nБей, барабанщик,\nБей, бей, бей (вместе двумя палочками о барабан)."
                                      ),
                                    ]
                                  ),
                                ),
                              ],
                            ),
                          )
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