import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Пятиминутки",
    "Подвижные",
    "На сплочение",
    "На знакомство",
    "С залом",
    "Психологические",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(vertical: 20.0),
      height: 90.0,
      color: Theme.of(context).primaryColor,
      //child: SizedBox(
      //  height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
      //),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color:
                    selectedIndex == index ? Colors.black : Colors.white,
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 4),
            //   height: 2,
            //   width: 45,
            //   color: selectedIndex == index ? Colors.black : Colors.transparent,
            // )
          ],
        ),
      ),
    );
  }
}
