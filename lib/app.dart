import 'package:flutter/material.dart';
import 'package:fortune_cookie_ver_2/concept_change_screen.dart';
import 'package:fortune_cookie_ver_2/constants/constants.dart';
import 'package:fortune_cookie_ver_2/controller/fortune_cookie_controller.dart';
import 'package:fortune_cookie_ver_2/message_label.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          "Today's Fortune Cookie",
          style: kAppBarTextStyle,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [IconButton(onPressed: () {Get.to(() => ConceptChangeScreen());}, icon: Icon(Icons.format_paint))],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.to(
                  () => MessageLabel(),
              transition: Transition.fadeIn,
            );
          },
          child: Hero(
            tag: "cookie",
            child: Container(
              width: double.infinity,
              height: 390.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/background_image.png'))),
            ),
          ),
        ),
      ),
    );
  }
}
