import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> imgList = [
    'assets/pictures/barbearia.jpg',
    'assets/pictures/barbearia1.jpg',
    'assets/pictures/barbearia2.jpg',
    'assets/pictures/barbearia3.jpg',
    'assets/pictures/barbearia4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imgList
          .map((item) => Container(
                child: Center(
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                ),
              ))
          .toList(),
    );
  }
}
