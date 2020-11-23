import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SupplyManagerStripe extends StatefulWidget {
  static const String routeName = "/Завхоз";

  @override
  _SupplyManagerStripeState createState() => _SupplyManagerStripeState();
}

bool toggle = false;
// ignore: must_be_immutable
class StrikeThrough extends StatelessWidget{

  bool todoToggle;
  String todoText;
  StrikeThrough({this.todoToggle, this.todoText}) : super();

  Widget _strikewidget(){
    if(todoToggle==false){
      return Text(todoText);
    }
    else{
      return Text(
        todoText,
        style: TextStyle(
          decoration: TextDecoration.lineThrough,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _strikewidget();
  }
}

class ListStructure{
  String key;
  bool values;
  ListStructure(this.key, this.values);
}

class _SupplyManagerStripeState extends State<SupplyManagerStripe> {
    
  Map<String, bool> _publicOutfitList = {
    "1. Палатки по количеству народа + одноместная продуктовая. Отвечает за продуктовую палатку завхоз, доступ к ней также имеет повар": false,
    "2. Тенты для палаток": false,
    "3. Костровой тент": false,
    "4. Плотная пластиковая пленка 2х3 метра (для туалета)": false,
    "5. Топор (1-2 на отряд)": false,
    "6. Пила": false,
    "7. Лопата": false,
    "8. Костровой набор (тросик и крючки) + рукавицы": false,
    "9. Котлы (3 шт. на отряд), либо 2 котла и чайник": false,
    "10. Ремнабор": false,
    "11. Спички и свечки в непромокаемой упаковке": false,
    "12. Поварешки (2 шт. на отряд)": false,
    "13. Скатерть или клеенка (на земле еду не готовим!)": false,
    "14. Ножи, консервные ножи, разделочные доски": false,
    "15. Расходка (веревка для изготовления патента /«лесная» полка/, привязывания тента и пр.)": false,
    "16. Волчатник (красно-белая флажная лента для ограждения территории стоянки)": false,
    "17. Аптечка": false,
    "18. Канистры для воды": false,
    "19. Средство для мытья посуды, две и более губки": false,
    "20. Мусорные мешки": false,
  };

  Map<String, bool> _personalOutfitList = {
    "1. Рюкзак большой с полиэтиленовым вкладышем": false,
    "2. Спальный мешок («спальник») с вкладышем": false,
    "3. Пенополиуретановый коврик («пенка», туристское название «каремат»)": false,
    "4. Туристская сидушка («поппер», «хабейник»)": false,
    "5. КЛМН: кружка, ложка, миска, нож": false,
    "6. Штормовка и штаны к ней": false,
    "7. Пакеты для упаковки вещей": false,
  };

  Map<String, bool> _necessaryThingsList = {
    "1. Непромокаемая длинная куртка с капюшоном": false,
    "2. Теплый свитер с горлом": false,
    "3. Длинные штаны (лучше хлопчатобумажные)": false,
    "4. Головной убор": false,
    "5. Основная обувь: крепкие разношенные ботинки": false,
    "6. Легкая обувь: кроссовки и т.п.": false,
    "7. Шорты, футболки": false,
    "8. По смене нижнего белья на каждый день": false,
    "9. Носки хлопчатобумажные (пара на день) и шерстяные": false,
    "10. Пижама или другая одежда для сна": false,
    "11. Гигиенические принадлежности: мыло в мыльнице, зубная паста, щетка, полотенца, шампунь и пр.": false,
    "12. Ремонтный набор: нитки, иголки, шнурки и пр. в упаковке": false,
    "13. Туалетная бумага, носовые платки": false,
    "14. Личная аптечка": false,
    "15. Фонарик, компас": false,
    "16. Шлепанцы": false,
    "17. Купальный костюм": false,
  };

  Map<String, bool> _dontForgetList = {
    "1. Блокнот с ручкой": false,
    "2. Деньги и документы": false,
    "3. Часы": false,
    "4. Фотоаппарат": false,
    "5. Внешний аккумулятор": false,
    "6. Гитара": false,
  };



  @override
  void initState() {
    super.initState();
    _loadCheckboxLists();
  }

  _loadCheckboxLists() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _publicOutfitList.updateAll((key, value) => value = prefs.getBool(key) ?? false);
      _personalOutfitList.updateAll((key, value) => value = prefs.getBool(key) ?? false);
      _necessaryThingsList.updateAll((key, value) => value = prefs.getBool(key) ?? false);
      _dontForgetList.updateAll((key, value) => value = prefs.getBool(key) ?? false);
    });
  }

  _checkPublicOutfitList(String checkKey, bool checkValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {    
      prefs.setBool(checkKey, checkValue);
      _publicOutfitList[checkKey] = prefs.getBool(checkKey) ?? false;
    });
  }

  _checkPersonalOutfitList(String checkKey, bool checkValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {    
      prefs.setBool(checkKey, checkValue);
      _personalOutfitList[checkKey] = prefs.getBool(checkKey) ?? false;
    });
  }

  _checkNecessaryThingsList(String checkKey, bool checkValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {    
      prefs.setBool(checkKey, checkValue);
      _necessaryThingsList[checkKey] = prefs.getBool(checkKey) ?? false;
    });
  }

  _checkDontForgetList(String checkKey, bool checkValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {    
      prefs.setBool(checkKey, checkValue);
      _dontForgetList[checkKey] = prefs.getBool(checkKey) ?? false;
    });
  }

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
                title: Text(SupplyManagerStripe.routeName.replaceFirst(new RegExp(r'/'), '')),
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
                              "Введение",
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
                                      "Сокращенное наименование нашивки «завхоз» расшифровывается как заведующий хозяйственной частью. Это человек, без которого не обходится ни один поход. Прежде всего завхоз обеспечивает ребят из отряда необходимыми предметами походного обихода, следит за сохранностью снаряжения и его починкой совместно с рем. мастером.",
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
                              "Требования к нашивке",
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
                                      textAlign: TextAlign.center,                           
                                    ),
                                    Text(
                                      "\n1. Составить список группового снаряжения с учетом особенностей маршрута.\n"
                                      "\n2. Получить снаряжение и проверить его.\n"
                                      "\n3. Организовать ремонт снаряжения.\n"
                                      "\n4. Составить список ответственных за снаряжение.\n"
                                      "\n5. Совместно с поваром подготовить продукты для похода.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\nВ походе:",
                                      style: Theme.of(context).textTheme.headline6,     
                                      textAlign: TextAlign.center,                           
                                    ),
                                    Text(
                                      "\n1. Следить за сохранностью снаряжения и его состоянием.\n"
                                      "\n2. При необходимости перераспределить снаряжение.\n"
                                      "\n3. Организовать необходимый ремонт снаряжения совместно с рем. мастером.\n"
                                      "\n4. Обеспечить сохранность пищевых продуктов.",
                                      style: Theme.of(context).textTheme.bodyText2,
                                    ),
                                    Text(
                                      "\nПосле похода:",
                                      style: Theme.of(context).textTheme.headline6,         
                                      textAlign: TextAlign.center,                       
                                    ),
                                    Text(
                                      "\n1. Организовать просушку и ремонт снаряжения.\n"
                                      "\n2. Собрать или раздать снаряжение на хранение участникам.",
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
                              "Общественное снаряжение",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    //SizedBox(height:10),
                                    Container(
                                      height: 1155,
                                      child: ListView(
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.all(5.0),
                                        children: _publicOutfitList.keys.map((String key) => 
                                          CheckboxListTile(
                                            value: _publicOutfitList[key], 
                                            onChanged: (bool value) {
                                              _checkPublicOutfitList(key, value);
                                            },
                                            title: StrikeThrough(todoText: key, todoToggle: _publicOutfitList[key]),
                                          )
                                        ).toList()
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: RaisedButton(
                                        elevation: 2,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                                          side: BorderSide(color: Colors.black54, width: 1.75),
                                        ),
                                        child: Icon(Icons.refresh, color: Colors.orange,),
                                        onPressed: (){
                                          setState(() {
                                            for (var item in _publicOutfitList.keys) {
                                              _checkPublicOutfitList(item, false);
                                            }
                                          });
                                        }
                                      ),
                                    )
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
                              "Личное снаряжение",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    //SizedBox(height:10),
                                    Container(
                                      height: 400,
                                      child: ListView(
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.all(5.0),
                                        children: _personalOutfitList.keys.map((String key) => 
                                          CheckboxListTile(
                                            value: _personalOutfitList[key], 
                                            onChanged: (bool value) {
                                              setState(() {
                                                _checkPersonalOutfitList(key, value);
                                              });
                                            },
                                            title: StrikeThrough(todoText: key, todoToggle: _personalOutfitList[key]),
                                          )
                                        ).toList()
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: RaisedButton(
                                        elevation: 2,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                                          side: BorderSide(color: Colors.black54, width: 1.75),
                                        ),
                                        child: Icon(Icons.refresh, color: Colors.orange,),
                                        onPressed: (){
                                          setState(() {
                                            for (var item in _personalOutfitList.keys) {
                                              _checkPersonalOutfitList(item, false);
                                            }
                                          });
                                        }
                                      )
                                    )
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
                              "Необходимые вещи",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                  //  SizedBox(height:10),
                                    Container(
                                      height: 960,
                                      child: ListView(
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.all(5.0),
                                        children: _necessaryThingsList.keys.map((String key) => 
                                          CheckboxListTile(
                                            value: _necessaryThingsList[key], 
                                            onChanged: (bool value) {
                                              setState(() {
                                                _checkNecessaryThingsList(key, value);
                                              });
                                            },
                                            title: StrikeThrough(todoText: key, todoToggle: _necessaryThingsList[key]),
                                          )
                                        ).toList()
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: RaisedButton(
                                        elevation: 2,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                                          side: BorderSide(color: Colors.black54, width: 1.75),
                                        ),
                                        child: Icon(Icons.refresh, color: Colors.orange,),
                                        onPressed: (){
                                          setState(() {
                                            for (var item in _necessaryThingsList.keys) {
                                              _checkNecessaryThingsList(item, false);
                                            }
                                          });
                                        }
                                      )
                                    )
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
                              "Дополнительно",
                              style: Theme.of(context).textTheme.headline6,
                            ),                           
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                  //  SizedBox(height:10),
                                    Container(
                                      height: 340,
                                      child: ListView(
                                        physics: NeverScrollableScrollPhysics(),
                                        padding: EdgeInsets.all(5.0),
                                        children: _dontForgetList.keys.map((String key) => 
                                          CheckboxListTile(
                                            value: _dontForgetList[key], 
                                            onChanged: (bool value) {
                                              setState(() {
                                                _checkDontForgetList(key, value);
                                              });
                                            },
                                            title: StrikeThrough(todoText: key, todoToggle: _dontForgetList[key]),
                                          )
                                        ).toList()
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: RaisedButton(
                                        elevation: 2,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                                          side: BorderSide(color: Colors.black54, width: 1.75),
                                        ),
                                        child: Icon(Icons.refresh, color: Colors.orange,),
                                        onPressed: (){
                                          setState(() {
                                            for (var item in _dontForgetList.keys) {
                                              _checkDontForgetList(item, false);
                                            }
                                          });
                                        }
                                      )
                                    )
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
                              "Продукты",
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
                                            text: "Завхоз отвечает за наличие и сохранность продуктов в пищевой палатке, поэтому должен знать "
                                          ),
                                          TextSpan(
                                            text: "основные правила упаковки и хранения продуктов в походе.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "\nПравильная подготовка и упаковка продуктов перед походом позволяет предохранить их от порчи и, следовательно, предостеречь туристов от отравления. При правильной упаковке продуктов они без потерь используются в походе, что дает возможность легко вести учет их расхода.\n"
                                            "\nПеред походом все продукты необходимо перебрать, уложить в мешочки или специальные емкости. Большинство продуктов нуждается в водонепроницаемой упаковке. Их необходимо разложить в мешочки по 1–2 кг, так их легче укладывать в рюкзак и учитывать расход.\n"
                                            "\nЧтобы не тратить время на отыскивание нужных продуктов, на мешочках надо сделать надписи. Мешочки шьют из ткани, внутрь закладывают мешочек из полиэтилена немного большего размера, чтобы он не испытывал разрывной нагрузки. Внешний (матерчатый) мешок предохраняет внутренний (полиэтиленовый) от случайных повреждений.\n"
                                          ),
                                          TextSpan(
                                            text: "\nХлебобулочные изделия.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Хлеб стоит брать на первые 3–5 дней, т.к. большой запас свежего хлеба тяжел в переноске и плохо сохраняется. Купленные в магазине сухари перед походом необходимо дополнительно просушить. Сухари, приготовленные самостоятельно, надо упаковать в компактные пачки для одноразового употребления.\n"
                                          ),
                                          TextSpan(
                                            text: "\nМясные и рыбные продукты.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Консервы нужно брать в жестяных банках, т.к. стеклянные банки тяжелы и менее прочны. Жестяные банки рекомендуется предварительно осмотреть – нет ли на них вздутий (бомбажа), который может быть связан с накоплением газов в результате жизнедеятельности вредных микроорганизмов. Такие консервы, особенно мясные и рыбные, опасны для здоровья.\n"
                                            "\nКолбаса полукопченая при нормальной температуре воздуха сохраняется довольно долго. Однако, чтобы поверхность колбасы не плесневела, надо смазать ее жиром. Ни в коем случае нельзя брать в поход нестойкие вареные колбасы.\n"
                                          ),
                                          TextSpan(
                                            text: "\nМасло и молочные продукты.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Сливочное масло быстро портится, поэтому его нужно съесть в первый день похода. Растительное масло удобно транспортировать в небольшой пластмассовой бутылке, предназначенной для хранения пищевых продуктов.\n"
                                            "\nСухое молоко или сливки перекладывают из банок (особенно это касается банок с железными крышками и картонными стенками) в полиэтиленовые мешочки, которые помещают в матерчатые мешки.\n"
                                          ),
                                          TextSpan(
                                            text: "\nКрупы и макаронные изделия.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Рис и пшено перед походом нужно вымыть и высушить, а гречневую крупу – поджарить и просеять. Из макаронных изделий в поход рекомендуется брать рожки, т.к. макароны и вермишель при переноске легко крошатся. И крупы, и рожки упаковывают в мешочки.\n"
                                          ),
                                          TextSpan(
                                            text: "\nСахар и кондитерские изделия.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Сахар желательно брать в виде песка. Он удобен в переноске, не рвет упаковку. Сахар должен храниться в водонепроницаемой упаковке.\n"
                                            "\nЧай, кофе, какао лучше всего брать в металлических коробках, причем коробки надо предварительно просушить, а затем всыпать в них содержимое без бумажной упаковки – в таком случае поместится значительно больше.\n",
                                          ),
                                          TextSpan(
                                            text: "\nДругие продукты.\n",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "Соль, так же как и сахар, требует водостойкой упаковки. Даже в водонепроницаемых мешках соль быстро намокает, и масса ее резко увеличивается, когда мешок открывают утром и вечером во время росы. Если в соль добавить 8% крахмала, она будет несколько меньше намокать. Соду хранят в водонепроницаемом мешочке. Молотый перец надо пересыпать в металлическую коробочку и заклеить липкой лентой."
                                          ),
                                        ]
                                      ),
                                    ),
                                  ]
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