import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_planet_app/home_components/home_body.dart';
import 'package:orange_planet_app/pages/stripes/campfireStripe.dart';
import 'package:orange_planet_app/pages/stripes/chroniclerStripe.dart';
import 'package:orange_planet_app/pages/stripes/climberStripe.dart';
import 'package:orange_planet_app/pages/stripes/doctorStripe.dart';
import 'package:orange_planet_app/pages/stripes/drummer.dart';
import 'package:orange_planet_app/pages/stripes/guitarPlayerStripe.dart';
import 'package:orange_planet_app/pages/stripes/knitterStripe.dart';
import 'package:orange_planet_app/pages/stripes/painterStripe.dart';
import 'package:orange_planet_app/pages/stripes/photographer.dart';
import 'package:orange_planet_app/pages/stripes/repairMasterStripe.dart';
import 'package:orange_planet_app/pages/stripes/sailor.dart';
import 'package:orange_planet_app/pages/stripes/sniperStripe.dart';
import 'package:orange_planet_app/pages/stripes/supplyManagerStripe.dart';
import 'package:orange_planet_app/pages/stripes/theaterMasterStripe.dart';
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
          primaryColor: Colors.orange,
          textTheme: GoogleFonts.robotoCondensedTextTheme(
            Theme.of(context).textTheme.copyWith(
                  bodyText2: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              side: BorderSide(color: Colors.orange, width: 1.75),
            ),
            height: 45,
          )),
      home: HomeBody(),
      routes: <String, WidgetBuilder>{
        CookStripe.routeName: (BuildContext context) => CookStripe(),
        NavigatorStripe.routeName: (BuildContext context) => NavigatorStripe(),
        CampManagerStripe.routeName: (BuildContext context) =>
            CampManagerStripe(),
        CampfireStripe.routeName: (BuildContext context) => CampfireStripe(),
        ChroniclerStripe.routeName: (BuildContext context) =>
            ChroniclerStripe(),
        SniperStripe.routeName: (BuildContext context) => SniperStripe(),
        TheaterMasterStripe.routeName: (BuildContext context) =>
            TheaterMasterStripe(),
        PainterStripe.routeName: (BuildContext context) => PainterStripe(),
        SupplyManagerStripe.routeName: (BuildContext context) =>
            SupplyManagerStripe(),
        ClimberStripe.routeName: (BuildContext context) => ClimberStripe(),
        KnitterStripe.routeName: (BuildContext context) => KnitterStripe(),
        PhotographerStripe.routeName: (BuildContext context) =>
            PhotographerStripe(),
        SailorStripe.routeName: (BuildContext context) => SailorStripe(),
        DrummerStripe.routeName: (BuildContext context) => DrummerStripe(),
        RepairMasterStripe.routeName: (BuildContext context) =>
            RepairMasterStripe(),
        GuitarPlayerStripe.routeName: (BuildContext context) =>
            GuitarPlayerStripe(),
        DoctorStripe.routeName: (BuildContext context) => DoctorStripe(),
      },
    );
  }
}
