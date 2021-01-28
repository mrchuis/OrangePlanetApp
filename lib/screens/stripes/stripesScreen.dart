import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';

import 'package:orange_planet_app/ad_manager.dart';
import 'components/campManagerStripe.dart';
import 'components/campfireStripe.dart';
import 'components/chroniclerStripe.dart';
import 'components/climberStripe.dart';
import 'components/cookStripe.dart';
import 'components/doctorStripe.dart';
import 'components/drummer.dart';
import 'components/guitarPlayerStripe.dart';
import 'components/knitterStripe.dart';
import 'components/navigatorStripe.dart';
import 'components/painterStripe.dart';
import 'components/photographer.dart';
import 'components/repairMasterStripe.dart';
import 'components/sailor.dart';
import 'components/sniperStripe.dart';
import 'components/supplyManagerStripe.dart';
import 'components/theaterMasterStripe.dart';

class Stripes extends StatefulWidget {
  StripesState createState() {
    return new StripesState();
  }
}

class StripesState extends State<Stripes> {
  TextEditingController _textController = TextEditingController();

  BannerAd _bannerAd;

  void _loadBannerAd() {
    _bannerAd
      ..load()
      ..show(anchorType: AnchorType.bottom);
  }

  final duplicateRouteNames = List<String>.from(getRouteName()..sort());
  // ignore: non_constant_identifier_names
  List<String> stripes_limit;
  var routeNames = List<String>();

  @override
  void initState() {
    super.initState();

    routeNames.addAll(duplicateRouteNames);
    stripes_limit = List.generate(8, (index) => duplicateRouteNames[index]);

    _bannerAd = BannerAd(
      adUnitId: AdManager.bannerAdUnitId,
      size: AdSize.banner,
    );
    _loadBannerAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  void filterSearchResult(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateRouteNames);
    if (query.isNotEmpty) {
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
      appBar: AppBar(
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
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                    size: 25.0,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 0.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.orange, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.orange, width: 1),
                  )),
              onChanged: filterSearchResult,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
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
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> getRouteName() {
  return [
    CookStripe.routeName,
    NavigatorStripe.routeName,
    CampManagerStripe.routeName,
    CampfireStripe.routeName,
    ChroniclerStripe.routeName,
    SniperStripe.routeName,
    TheaterMasterStripe.routeName,
    PainterStripe.routeName,
    SupplyManagerStripe.routeName,
    ClimberStripe.routeName,
    KnitterStripe.routeName,
    PhotographerStripe.routeName,
    SailorStripe.routeName,
    DrummerStripe.routeName,
    RepairMasterStripe.routeName,
    GuitarPlayerStripe.routeName,
    DoctorStripe.routeName,
  ];
}
