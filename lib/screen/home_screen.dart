import 'package:atomic_design/atoms/image.dart';
import 'package:atomic_design/atoms/input_field.dart';
import 'package:atomic_design/atoms/text.dart';
import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:atomic_design/molecules/app_bar.dart';
import 'package:atomic_design/molecules/nav_bar.dart';
import 'package:atomic_design/tokens/colors_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const OurAppBar(
        title: "",
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              H1(text: "Hello World Atomic design"),
              H2(text: "I am developer videogames and mobile"),
              ContentText(text: "Hello are Daniel"),
              OurImage(
                url: "https://cdn.shopify.com/s/files/1/1447/5176/files/Logo_Barcraft_tees_400.png?v=1576099165",
                boxFit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const OurFooter(
        bottomNavigationBar: [
          BottomNavigationBarItem(icon: Icon(Icons.shop_rounded), label: "Store", backgroundColor: h2Color),
          BottomNavigationBarItem(icon: Icon(Icons.school_rounded), label: "School", backgroundColor: h2Color),
          BottomNavigationBarItem(icon: Icon(Icons.videogame_asset_rounded), label: "Videogames", backgroundColor: h2Color),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_filled_rounded), label: "Play", backgroundColor: h2Color),
        ],
      ),
    
    );
  }
}