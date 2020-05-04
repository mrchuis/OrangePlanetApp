import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:orange_planet_app/pages/stripes/campfireStripe.dart';
import 'package:orange_planet_app/pages/stripes/chroniclerStripe.dart';
import 'package:orange_planet_app/pages/stripes/climberStripe.dart';
import 'package:orange_planet_app/pages/stripes/painterStripe.dart';
import 'package:orange_planet_app/pages/stripes/sniperStripe.dart';
import 'package:orange_planet_app/pages/stripes/supplyManagerStripe.dart';
import 'package:orange_planet_app/pages/stripes/theaterMasterStripe.dart';

import 'pages/songsScreen.dart';
import 'pages/stripesScreen.dart';
import 'pages/trialsScreen.dart';
import 'pages/stripes/cookStripe.dart';
import 'pages/stripes/navigatorStripe.dart';
import 'pages/stripes/campManagerStripe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orange Planet',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        CookStripe.routeName: (BuildContext context) => CookStripe(),
        NavigatorStripe.routeName: (BuildContext context) => NavigatorStripe(),
        CampManagerStripe.routeName: (BuildContext context) => CampManagerStripe(),
        CampfireStripe.routeName: (BuildContext context) => CampfireStripe(),
        ChroniclerStripe.routeName: (BuildContext context) => ChroniclerStripe(),
        SniperStripe.routeName: (BuildContext context) => SniperStripe(),
        TheaterMasterStripe.routeName: (BuildContext context) => TheaterMasterStripe(),
        PainterStripe.routeName: (BuildContext context) => PainterStripe(),
        SupplyManagerStripe.routeName: (BuildContext context) => SupplyManagerStripe(),
        ClimberStripe.routeName: (BuildContext context) => ClimberStripe(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _selectedIndex = 1;
  
  final List<Widget> _children = [
    Trials(),
    Stripes(),
    Songs(),
  ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Испытания'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.cards),
            title: Text('Нашивки'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.guitarAcoustic),
            title: Text('Песни'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[700],
        onTap: _onItemTapped, 
      ),
    );
  }
}