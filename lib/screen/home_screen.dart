import 'package:atomic_design/atoms/button_text.dart';
import 'package:atomic_design/atoms/image.dart';
import 'package:atomic_design/atoms/input_field.dart';
import 'package:atomic_design/atoms/text.dart';
import 'package:atomic_design/fundation/color_fundation.dart';
import 'package:atomic_design/molecules/app_bar.dart';
import 'package:atomic_design/molecules/nav_bar.dart';
import 'package:atomic_design/molecules/search_widget.dart';
import 'package:atomic_design/tokens/colors_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarWidget(
        title: "",
        actions: [
          const CircleAvatar(
            backgroundColor: scale00,
            backgroundImage: AssetImage("assets/img/Image.png"),
          ),
          SizedBox(width: width * 0.03,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_rounded)),
          SizedBox(width: width * 0.03,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo_rounded)),
          SizedBox(width: width * 0.03,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded)),
          SizedBox(width: width * 0.02,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const H1(text: "Hello World Atomic design", fontSizeText: 30,),
            SizedBox(height: height * 0.014,),
            const H2(text: "I am developer videogames and mobile", fontSizeText: 20, colorText: statusSuccess,),
            SizedBox(height: height * 0.014),
            const ContentText(text: "Hello are Daniel"),
            SizedBox(height: height * 0.014,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.037, vertical: height * 0.010),
              child: const OurImage(
                url: "https://i.pinimg.com/originals/61/89/7f/61897fbab5cf4e726f8743ce8969faa7.gif",
                boxFit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.037, vertical: height * 0.010),
              child: const OurImage(
                url: "https://media.tenor.com/CjqZyaNUSlwAAAAd/boxing-tom-and-jerry.gif",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.037, vertical: height * 0.010),
              child: const OurImage(
                url: "https://media.tenor.com/4ppL9Gf9aDsAAAAd/tom-and-jerry-tom.gif",
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.037, vertical: height * 0.010),
              child: const OurImage(
                url: "https://thumbs.gfycat.com/GiddyKindheartedChrysomelid-size_restricted.gif",
              ),
            ),
            SizedBox(height: height * 0.020),
            SearchWidget(
              hintText: "Search for...",
              width: width * 0.8,
              height: height * 0.08,
            ),
            InputField(
              width: double.infinity, 
              height: height * 0.08, 
              hintText: "Writing"
            ),
            ButtonText(
              onPressed: (){}, 
              buttonStyle: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  statusSuccess
                ),
              ),
              child: const Text("Continue"),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarWidget(

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