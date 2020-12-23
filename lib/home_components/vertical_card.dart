import 'package:flutter/material.dart';

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
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 4),
                      blurRadius: 20,
                      color: Color(0xFFB0CCE1).withOpacity(0.32),
                    ),
                  ]),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  widget.image,
                                  width: 67,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          widget.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}