import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orange_planet_app/ad_manager.dart';
import 'package:orange_planet_app/screens/home/home_body.dart';
import 'init.dart';
import 'screens/stripes/components/campManagerStripe.dart';
import 'screens/stripes/components/campfireStripe.dart';
import 'screens/stripes/components/chroniclerStripe.dart';
import 'screens/stripes/components/climberStripe.dart';
import 'screens/stripes/components/cookStripe.dart';
import 'screens/stripes/components/doctorStripe.dart';
import 'screens/stripes/components/drummer.dart';
import 'screens/stripes/components/guitarPlayerStripe.dart';
import 'screens/stripes/components/knitterStripe.dart';
import 'screens/stripes/components/navigatorStripe.dart';
import 'screens/stripes/components/painterStripe.dart';
import 'screens/stripes/components/photographer.dart';
import 'screens/stripes/components/repairMasterStripe.dart';
import 'screens/stripes/components/sailor.dart';
import 'screens/stripes/components/sniperStripe.dart';
import 'screens/stripes/components/supplyManagerStripe.dart';
import 'screens/stripes/components/theaterMasterStripe.dart';
import 'splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Init.initialize(context);
  }

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
      home: FutureBuilder(
        future: _initAdMob(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return HomeBody();
          } else {
            return SplashScreen();
          }
        },
      ), //
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

  Future<void> _initAdMob() {
    return FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  }
}
