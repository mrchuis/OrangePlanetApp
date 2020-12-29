import 'package:flutter/material.dart';
import 'package:orange_planet_app/screens/laws/laws.dart';
import 'package:orange_planet_app/screens/stripes/stripesScreen.dart';
import 'package:orange_planet_app/screens/trials/trialsScreen.dart';

class Pathfinder extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryCard(
          image: "assets/icons/elka.png",
          title: "Законы и заповеди",
          press: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) {
                return Laws();
              }),
            );
          },
        ),
        CategoryCard(
          image: "assets/icons/fire.png",
          title: "Нашивки",
          press: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) {
                return Stripes();
              }),
            );
          },
        ),
        CategoryCard(
          image: "assets/icons/palatka.png",
          title: "Испытания",
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
    );
  }
}

class CategoryCard extends StatelessWidget {
  
  const CategoryCard({
    Key key, 
    this.image, 
    this.title, 
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 85,
        child: Column(
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(13),
              shadowColor: Colors.black,
              color: Colors.white,
              child: InkWell(
                onTap: press,
                borderRadius: BorderRadius.circular(13),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                      child: Image.asset(image),
                    ),
                  )
                ),
              ),
            ),
            const SizedBox(height:5),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
