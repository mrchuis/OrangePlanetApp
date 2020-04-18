import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'pages/songs.dart';
import 'pages/stripes.dart';
import 'pages/trials.dart';

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


