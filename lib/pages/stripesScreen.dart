import 'package:flutter/material.dart';
import 'package:orange_planet_app/pages/stripes/campManagerStripe.dart';
import 'package:orange_planet_app/pages/stripes/campfireStripe.dart';
import 'package:orange_planet_app/pages/stripes/chroniclerStripe.dart';

import 'package:orange_planet_app/pages/stripes/drummer.dart';
import 'package:orange_planet_app/pages/stripes/guitarPlayerStripe.dart';
import 'package:orange_planet_app/pages/stripes/knitterStripe.dart';
import 'package:orange_planet_app/pages/stripes/sniperStripe.dart';

import 'package:orange_planet_app/pages/stripes/supplyManagerStripe.dart';
import 'package:orange_planet_app/pages/stripes/theaterMasterStripe.dart';

import 'stripes/navigatorStripe.dart';

class Stripes extends StatefulWidget {
  StripesState createState() {
    return new StripesState();
  }
}

class StripesState extends State<Stripes> {

  TextEditingController _textController = TextEditingController();

  final duplicateRouteNames = List<String>.from(getRouteName()..sort());
  var routeNames = List<String>();

  @override
  void initState() {
    routeNames.addAll(duplicateRouteNames);
    super.initState();  
  }

  void filterSearchResult(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateRouteNames);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        routeNames.clear();
        routeNames.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        routeNames.clear();
        routeNames.addAll(duplicateRouteNames);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        centerTitle: true,
        title: Text('Нашивки'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Поиск нашивки',
                filled: true,
                fillColor: Colors.white70,
                prefixIcon: Icon(Icons.search,
                  color: Colors.orange,
                  size: 25.0,
                ),
                contentPadding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange, width:1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.orange, width:1),
                )
              ),
              onChanged: filterSearchResult,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: routeNames.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                    title: Text(
                      routeNames[index].replaceFirst(new RegExp(r'/'), ''),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed(routeNames[index]);
                      });
                    },
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

List<String> getRouteName(){
  return [
    //CookStripe.routeName,
    NavigatorStripe.routeName,
    CampManagerStripe.routeName,
    CampfireStripe.routeName,
    ChroniclerStripe.routeName,
    SniperStripe.routeName,
    TheaterMasterStripe.routeName,
    //PainterStripe.routeName,
    SupplyManagerStripe.routeName,
    //ClimberStripe.routeName,
    KnitterStripe.routeName,
    //PhotographerStripe.routeName,
    //SailorStripe.routeName,
    DrummerStripe.routeName,
    GuitarPlayerStripe.routeName,
  ];
}
