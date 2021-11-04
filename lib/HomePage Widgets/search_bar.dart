import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.4, vertical: 15),
      child: Container(
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            labelText: 'Search',
          ),
        ),
      ),
    );
  }
}
