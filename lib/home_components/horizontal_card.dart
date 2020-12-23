import 'package:flutter/material.dart';

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
          borderRadius: BorderRadius.circular(13),
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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.orange,
          ),
          child: Container(
            margin: EdgeInsets.only(right: 5),
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
                )),
          ),
        ));
  }
}