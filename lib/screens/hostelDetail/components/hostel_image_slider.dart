import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class HostelImageSlider extends StatelessWidget {
  final List imgList;
  HostelImageSlider({required this.imgList});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true, height: 290, enlargeCenterPage: true),
        items: imgList
            .map(
              (e) => Container(
                width: double.infinity,
                child: ExtendedImage.asset(
                  e["imgId"],
                  enableLoadState: true,
                  fit: BoxFit.fill,
                  // enableMemoryCache: true,
                  width: double.infinity,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
