import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:orange_planet_app/pages/stripes/campfireStripe.dart';
import 'package:orange_planet_app/pages/stripes/chroniclerStripe.dart';
import 'package:orange_planet_app/pages/stripes/climberStripe.dart';
import 'package:orange_planet_app/pages/stripes/drummer.dart';
import 'package:orange_planet_app/pages/stripes/knitterStripe.dart';
import 'package:orange_planet_app/pages/stripes/painterStripe.dart';
import 'package:orange_planet_app/pages/stripes/photographer.dart';
import 'package:orange_planet_app/pages/stripes/sailor.dart';
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
        textTheme: GoogleFonts.robotoCondensedTextTheme(
          Theme.of(context).textTheme.copyWith(
            //headline1: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold),
            //headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),
            bodyText2: TextStyle(fontSize: 16.0,),
          ),
        ),
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
        
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
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
                height: 310,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'icon/logoPrince.png',
                            width: 320,
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Основное",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      HorizontalCard(
                        icon: Icons.book, 
                        title: "Законы и Заповеди",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Trials();
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
                        title: "\nПесни",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Songs();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Информация",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height:10),
                  VerticalCard(
                    image: 'icon/icon.png',
                    title: "Как стать следопытом",
                    press: () {},
                  ),
                  VerticalCard(
                    image: 'icon/icon.png',
                    title: "Игры",
                    press: () {},
                  ),
                  VerticalCard(
                    image: 'icon/icon.png',
                    title: "Построение",
                    press: () {},
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

class VerticalCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        children: <Widget>[
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 4),
                  blurRadius: 3,
                  color: Colors.black12,
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
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(image,
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
                                title,
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
          width: 90,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 4),
                blurRadius: 3,
                color: Colors.black12,
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      widget.icon,
                      size: 45,
                      color: Colors.orange,
                    ),
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

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  
//   int _selectedIndex = 1;
  
//   final List<Widget> _children = [
//     Trials(),
//     Stripes(),
//     Songs(),
//   ];
  
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             title: Text('Испытания'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(MdiIcons.cards),
//             title: Text('Нашивки'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(MdiIcons.guitarAcoustic),
//             title: Text('Песни'),
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.orange[700],
//         onTap: _onItemTapped, 
//       ),
//     );
//   }
// }