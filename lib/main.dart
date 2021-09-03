import 'package:flutter/material.dart';
import 'package:fortune_cookie_ver_2/controller/concept_change_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';
import 'controller/fortune_cookie_controller.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConceptChangeController());
    return Obx(() => GetMaterialApp(
      theme: controller.currentTheme.value,
      initialBinding: BindingsBuilder(() {
        Get.put(FortuneCookieController());
      }),
      home: App(),
    ),);
  }
}
