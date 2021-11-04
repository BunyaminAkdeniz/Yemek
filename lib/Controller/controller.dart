import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'alt_yemek_listesi.dart';
import 'list_food.dart';

var food = [
  buildReccomendsContainer(
    listFoodImages[0],
    Colors.red.shade100,
  ),
  buildReccomendsContainer(
    listFoodImages[1],
    Colors.deepPurple.shade100,
  ),
  buildReccomendsContainer(
    listFoodImages[2],
    Colors.deepOrange.shade100,
  ),
  buildReccomendsContainer(
    listFoodImages[3],
    Colors.blue.shade100,
  ),
];

var listeuzunlugu = [];
void listeBelirleyici = {
  for (int i = 0; i < food.length; i++)
    {listeuzunlugu.add(i), print(listeuzunlugu)}
};

Container altBarYapici(String imageBilgisi) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("images/assets/${imageBilgisi}.png"),
            padding: EdgeInsets.all(15),
          ),
        ),
      ],
    ),
  );
}

var altList = [
  altBarYapici(listFoodImages[0]),
  altBarYapici(listFoodImages[1]),
  altBarYapici(listFoodImages[2]),
  altBarYapici(listFoodImages[3]),
];
List<String> listFoodImages = ['burger', 'chips', 'hotdog', 'pizza'];
