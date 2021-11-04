import 'package:flutter/material.dart';

Container buildReccomendsContainer(String imageBilgisi, Color color) {
  void donusturucu = color.toString();

  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Image.asset("images/assets/${imageBilgisi}.png"),
              padding: EdgeInsets.symmetric(vertical: 0),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Text(
              '${imageBilgisi}'.toUpperCase(),
              style: TextStyle(color: color),
            )),
        Expanded(flex: 1, child: Text('Prices')),
      ],
    ),
  );
}
