import 'package:flutter/material.dart';

class HomePageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.4),
      child: Text(
        'SEARCH FOR \nRECIPES',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, letterSpacing: 1.40),
      ),
    );
  }
}
