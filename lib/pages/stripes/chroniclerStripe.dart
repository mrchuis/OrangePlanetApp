import 'package:flutter/material.dart';

class ChroniclerStripe extends StatelessWidget {
  static const String routeName = "/Летописец";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 50.0,
              floating: true,
              pinned: false,
              flexibleSpace: new FlexibleSpaceBar(
                title: Text(routeName.replaceFirst(new RegExp(r'/'), '')),
              ),
            ),
            SliverList(
              delegate:SliverChildBuilderDelegate(
                (content, index) => SingleChildScrollView(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Тескст про нашивку\n\n\nТескст про нашивку\n\n\nТескст про нашивку \n\n\nТескст про нашивку \n\n\nТескст про нашивку \n\n\nТескст про нашивку \n\n\nТескст про нашивку \n\n\nТескст про нашивку \n\n\nТескст про нашивку \n\n\nТескст про нашивку",
                    style: TextStyle(
                      fontSize: 25,
                    ),  
                  ),
                ),
                childCount: 1,
              )
            ),
          ],
      ),
    );
  }
}