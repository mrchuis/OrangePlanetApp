import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange_planet_app/screens/home/components/feedback.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

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
    return Container(
      height: size.height * 0.38,
      width: double.infinity,
      color: Color(0xFF035AA6),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
              child: Padding(
              padding: const EdgeInsets.only(top:40, right: 10),
              child: PopupMenuButton<int>(
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
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[Image.asset(
              'icon/logoPrince.png',
              alignment: Alignment.topCenter,
              )],
            ),
          ),
        ],
      ),
    );
  }
}