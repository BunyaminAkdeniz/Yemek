import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'controller.dart';

Expanded BuildAltYemekler() {
  return Expanded(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: listFoodImages.length,
          itemBuilder: (context, intext) {
            return Center(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                        'images/assets/${listFoodImages[intext]}.png'),
                  ),
                ),
                title: Text('${listFoodImages[intext]}'.toUpperCase()),
                subtitle: RatingBar.builder(
                  initialRating: 4.7,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}
