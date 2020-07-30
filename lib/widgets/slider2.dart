import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

class ItemDetailScreen extends StatefulWidget {
  static const routeName = "/itemDetail";
  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: 7,
        options: CarouselOptions(
          initialPage: 1,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          autoPlay: false,
          height: 250,
          aspectRatio: 2.0,
        ),
        itemBuilder: (ctx, index) {
          return Container(
            child: Image(
              image: AssetImage("assets/images/item.png"),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
