import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yemek/Controller/controller.dart';

class Recommends extends StatelessWidget {
  get callbackFunction => null;

  @override
  Widget build(BuildContext context) {
    var cihazEn = MediaQuery.of(context).size.height;
    // var cihazBoy = MediaQuery.of(context).size.width;
    listeBelirleyici;

    cihazEn *= 20 / 100;
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              height: cihazEn,
              viewportFraction: 0.30,
              initialPage: 40,
              enableInfiniteScroll: true,
              reverse: false,
              // autoPlay: true,
              // autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            items: listeuzunlugu.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return food[i];
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
