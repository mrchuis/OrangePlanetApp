import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:orange_planet_app/pages/feedback.dart';
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
import 'package:url_launcher/url_launcher.dart';

import 'pages/songsScreen.dart';
import 'pages/stripesScreen.dart';
import 'pages/laws.dart';
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
        textTheme: GoogleFonts.robotoCondensedTextTheme(
          Theme.of(context).textTheme.copyWith(
            //headline1: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold),
            //headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),
            bodyText2: TextStyle(fontSize: 16.0,),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            side: BorderSide(color: Colors.orange, width: 1.75),
          ),
          height: 45,
        )
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
        KnitterStripe.routeName: (BuildContext context) => KnitterStripe(),
        PhotographerStripe.routeName: (BuildContext context) => PhotographerStripe(),
        SailorStripe.routeName: (BuildContext context) => SailorStripe(),
        DrummerStripe.routeName: (BuildContext context) => DrummerStripe(),
        RepairMasterStripe.routeName: (BuildContext context) => RepairMasterStripe(),
        GuitarPlayerStripe.routeName: (BuildContext context) => GuitarPlayerStripe(),
        DoctorStripe.routeName: (BuildContext context) => DoctorStripe(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ]
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: PopupMenuButton<int>(
                          //color: Color(0xFF5583CD),
                          icon: Icon(Icons.menu, color: Colors.white,),
                          onSelected: (value) {
                            if (value == 1) {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => FeedbackScreen())
                              );
                            }
                            if (value == 2) {
                              Navigator.push(
                                context, 
                                _launchURL()
                              );
                            }
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Text("Обратная связь"),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Text("Оставить отзыв"),
                            ),
                          ],
                        ),
                        //child: SvgPicture.asset("assets/icons/menu.svg"),
                      ),
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              'icon/logoPrince.png',
                              width: 244,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Следопытство",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        HorizontalCard(
                          icon: Icons.book, 
                          title: "Законы и\nЗаповеди",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Laws();
                              }),
                            );
                          },
                        ),
                        HorizontalCard(
                          icon: MdiIcons.cards, 
                          title: "\nНашивки",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Stripes();
                              }),
                            );
                          },
                        ),
                        HorizontalCard(
                          icon: MdiIcons.guitarAcoustic, 
                          title: "\nИспытания",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Trials();
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  //),
                  SizedBox(height: 20),
                  Text(
                    "Развлечения",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height:10),
                  VerticalCard(
                    image: 'icon/icon.png',
                    title: "Песни",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Songs();
                        }),
                      );
                    },
                  ),
                  VerticalCard(
                    image: 'icon/icon.png',
                    title: "Игры",
                    press: () {
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class VerticalCard extends StatefulWidget {
  final String image;
  final String title;
  final Function press;
  const VerticalCard({
    Key key, 
    this.image, 
    this.title, 
    this.press,
  }) : super(key: key);

  @override
  _VerticalCardState createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        children: <Widget>[
          Container(
             height: 90,
             width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 4),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.32),
                ),
              ]
            ),
            child: Material(
              borderRadius: BorderRadius.circular(13),
              elevation: 5,
              shadowColor: Colors.black,
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(13),
                onTap: widget.press,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(widget.image,
                          width: 67,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child:Container(
                          width: MediaQuery.of(context).size.width - 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.title,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              )
            ),
          ),
        ],
      )
    );
  }
}

class HorizontalCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final Function press;
  const HorizontalCard({
    Key key, 
    this.icon, 
    this.title, 
    this.press, 
  }) : super(key: key);

  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {     
      return Container(
        //margin: EdgeInsets.only( right: 15, top: 5, bottom: 10),
        //padding: EdgeInsets.all(5),
        width: 95,
        height: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.32),
              //color: Colors.black12,
            )
          ],
        ),
        child: Material(
          borderRadius: BorderRadius.circular(13),
          elevation: 5,
          shadowColor: Colors.black,
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(13),
            onTap: widget.press,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    widget.icon,
                    size: 45,
                    color: Colors.orange,
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          )
        )
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 67);
    path.quadraticBezierTo(
      size.width / 2 , size.height, size.width, size.height - 67
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}