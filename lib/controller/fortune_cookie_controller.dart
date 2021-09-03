import 'dart:math';
import 'package:get/get.dart';
import '../constants/fortune_messages.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:get_storage/get_storage.dart';


class FortuneCookieController extends GetxController {
  final box = GetStorage();
  String? dateData;
  String? messageData;
  String now = DateFormat.yMMMd().format(DateTime.now());
  RxString fortuneMessage = "".obs;
  RxBool selected = false.obs;
  @override
  void onInit() {
    super.onInit();
    dateData = box.read('date');
    if(dateData == null) {
      box.write('date', now);
      String randomFortuneMessage = getRandomFortuneMessage();
      box.write('message', randomFortuneMessage);
      messageData = randomFortuneMessage;
      fortuneMessage(randomFortuneMessage);
    }else {
      if(dateData == now) {
        fortuneMessage(box.read('message'));
      } else {
        box.write('date', now);
        String randomFortuneMessage = getRandomFortuneMessage();
        box.write('message', randomFortuneMessage);
        messageData = randomFortuneMessage;
        fortuneMessage(randomFortuneMessage);
      }
    }
  }

  String getRandomFortuneMessage() {
    int maxNum = kFortuneMessages.length;
    int randomNumber = Random().nextInt(maxNum);
    return kFortuneMessages[randomNumber];
  }

  void toggleSelect(){
    selected(!selected.value);
  }
}