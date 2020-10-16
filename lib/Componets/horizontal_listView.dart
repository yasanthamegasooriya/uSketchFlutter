import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: "assets/images/0001.jpg",
            image_caption: "Palazzo Pant-1",
          ),
          Category(
            image_location: "assets/images/0002.jpg",
            image_caption: "Gent Trouser",
          ),
          Category(
            image_location: "assets/images/0003.jpg",
            image_caption: "Palazzo Pant-2",
          ),
          Category(
            image_location: "assets/images/0004.jpg",
            image_caption: "Short Frock",
          ),
          Category(
            image_location: "assets/images/0005.jpg",
            image_caption: "Long Frock",
          ),
          Category(
            image_location: "assets/images/0006.jpg",
            image_caption: "Blouse - with long sleeves",
          ),
          Category(
            image_location: "assets/images/0007.jpg",
            image_caption: "Blouse",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({Key key, this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
