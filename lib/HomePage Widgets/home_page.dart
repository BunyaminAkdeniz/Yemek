import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:yemek/Controller/alt_yemek_listesi.dart';
import 'package:yemek/Controller/Drawer.dart';
import 'package:yemek/HomePage%20Widgets/reccomends.dart';
import 'first_text.dart';
import 'recommended_text.dart';
import 'search_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: buildDrawer(),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.bars,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Center(
                child: Container(
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomePageText(),
            SearchBar(),
            RecommendText(),
            Recommends(),
            BuildAltYemekler(),
          ],
        ),
      ),
    );
  }
}
