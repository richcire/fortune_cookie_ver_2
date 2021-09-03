import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fortune_cookie_ver_2/controller/fortune_cookie_controller.dart';
import 'package:get/get.dart';

class MessageContainer extends StatefulWidget {
  const MessageContainer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final FortuneCookieController controller;

  @override
  _MessageContainerState createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: controller,
    curve: Curves.fastOutSlowIn,
  );

  final player = AudioCache();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    //애니매이션 한번만 진행
    controller.forward();
    player.play('page_turn.wav');
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Obx(
            () => SizeTransition(
          sizeFactor: _animation,
          axisAlignment: -1,

          child: Text(
            widget.controller.fortuneMessage.value,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'KaushanScript',
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
