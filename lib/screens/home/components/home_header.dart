import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange_planet_app/screens/home/components/feedback.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 8, right: 8),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text(
            //   "Оранжевая планета",
            //   style: Theme.of(context).textTheme.headline4.copyWith(
            //         color: Colors.orange,
            //       ),
            // ),
            PopupMenuButton<int>(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onSelected: (value) {
                if (value == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FeedbackScreen()));
                }
                if (value == 2) {
                  Navigator.push(context, _launchURL());
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
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Expanded(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'icon/logoPrince.png',
                  width: 210,
                  //fit: BoxFit.fitWidth,
                  //alignment: Alignment.top,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

// class HomeHeader extends StatelessWidget {
//   const HomeHeader({
//     Key key,
//     @required this.size,
//   }) : super(key: key);

//   final Size size;

//   _launchURL() async {
//     const url = 'https://flutter.dev';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       //clipper: MyClipper(),
//       child: Container(
//         height: size.height * 0.38,
//         child: Column(
//           children: <Widget>[
//             Align(
//               alignment: Alignment.topRight,
//                 child: Padding(
//                 padding: const EdgeInsets.only(top:30, right: 10),
//                 child: PopupMenuButton<int>(
//                   icon: SvgPicture.asset("assets/icons/menu.svg"),
//                   onSelected: (value) {
//                     if (value == 1) {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => FeedbackScreen()));
//                     }
//                     if (value == 2) {
//                       Navigator.push(context, _launchURL());
//                     }
//                   },
//                   itemBuilder: (context) => [
//                     PopupMenuItem(
//                       value: 1,
//                       child: Text("Обратная связь"),
//                     ),
//                     PopupMenuItem(
//                       value: 2,
//                       child: Text("Оставить отзыв"),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Stack(
//                 children: <Widget>[
//                   Image.asset(
//                     'icon/logoPrince1.png',
//                     width: 240,
//                     fit: BoxFit.fitWidth,
//                     alignment: Alignment.topCenter,
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 80);
//     path.quadraticBezierTo(
//         size.width / 2, size.height, size.width, size.height - 80);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
