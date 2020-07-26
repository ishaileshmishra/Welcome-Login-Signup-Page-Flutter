import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class ImageSliderDemo extends StatelessWidget {
  List<String> imgList;

  ImageSliderDemo(List<String> imgList) {
    this.imgList = imgList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        height: 200,
        viewportFraction: 1.0,
        enlargeCenterPage: true,
        // autoPlay: false,
      ),
      items: imgList.map((item) => Container(
                child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      child: Image.network(item,
                          fit: BoxFit.cover, width: double.infinity),
                    )),
              ))
          .toList(),
    ));
  }
}
