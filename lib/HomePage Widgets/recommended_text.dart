import 'package:flutter/material.dart';

class RecommendText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.4, 0, 25.4, 15),
      child: Container(
        child: Text(
          'Recommended',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
