import 'package:flutter/material.dart';
import 'package:fortune_cookie_ver_2/controller/fortune_cookie_controller.dart';
import 'package:fortune_cookie_ver_2/widgets/message_container.dart';
import 'package:get/get.dart';

class MessageLabel extends GetView<FortuneCookieController> {
  const MessageLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: Center(
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
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 2 - 35,
          right: 0,
          left: 0,
          child: MessageContainer(controller: controller),
        ),
      ]),
    );
  }
}

