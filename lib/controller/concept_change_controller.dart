import 'package:fortune_cookie_ver_2/constants/constants.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ConceptChangeController extends GetxController {
  final box = GetStorage();
  String? themeData;
  final currentTheme = kDefaultStyle.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    themeData = box.read('theme');
    if(themeData == null){
      box.write('theme', 'default');
    }else{
      switch(themeData){
        case 'default':
          changeToDefaultStyle();
          break;
        case 'china':
          changeToChinaStyle();
          break;
        case ' korea':
          changeToKoreaStyle();
          break;
        case 'japan':
          changeToJapanStyle();
          break;
      }
    }
  }
  void changeToChinaStyle(){
    currentTheme(kChinaStyle);
    box.write('theme', 'china');
  }

  void changeToKoreaStyle(){
    currentTheme(kKoreaStyle);
    box.write('theme', 'korea');
  }

  void changeToJapanStyle(){
    currentTheme(kJapanStyle);
    box.write('theme', 'japan');
  }

  void changeToDefaultStyle(){
    currentTheme(kDefaultStyle);
    box.write('theme', 'default');
  }
}