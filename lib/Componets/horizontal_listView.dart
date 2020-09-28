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
            image_location: "assets/images/Category/dress1.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress2.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress3.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress4.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress5.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress6.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress7.jpg",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress8.png",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress9.png",
            image_caption: "Dress",
          ),
          Category(
            image_location: "assets/images/Category/dress10.png",
            image_caption: "Dress",
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
