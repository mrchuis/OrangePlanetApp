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
      ]),
    );
  }
}
