import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {

  const VerticalCard({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 4),
                    blurRadius: 20,
                    color: Color(0xFFB0CCE1).withOpacity(0.32),
                  ),
                ]
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
                      onTap: press,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset(
                                image,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6,
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
              ),
            ),
          ],
        ));
  }
}