import 'package:flutter/material.dart';
import 'package:fortune_cookie_ver_2/controller/concept_change_controller.dart';
import 'package:get/get.dart';

import 'widgets/concept_card.dart';
import 'constants/constants.dart';

class ConceptChangeScreen extends StatelessWidget {
  const ConceptChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConceptChangeController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          'ChangeConcept',
          style: kAppBarTextStyle,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: ConceptCard(
                  title: 'China',
                  imageAsset: Image.asset('images/china_flag.png'),
                ),
                onTap: () {controller.changeToChinaStyle();},
              ),
              GestureDetector(
                child: ConceptCard(
                  title: 'Korea',
                  imageAsset: Image.asset('images/korea_flag.jpg'),
                ),
                onTap: () {controller.changeToKoreaStyle();},
              ),
            ],
          ),
          SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: ConceptCard(
                  title: 'Japan',
                  imageAsset: Image.asset('images/japan_flag.png'),
                ),
                onTap: () {controller.changeToJapanStyle();},
              ),
              GestureDetector(
                child: ConceptCard(
                  title: 'None',
                  imageAsset: Image.asset('images/cookie.png'),
                ),
                onTap: () {controller.changeToDefaultStyle();},
              ),
            ],
          )
        ],
      ),
    );
  }
}
