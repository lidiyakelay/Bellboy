import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //Dynamic height for padding and margin
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height15 = screenHeight / 56.27;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  //Dynamic width for padding and margin
  static double width10 = screenHeight / 84.4;
  static double width20 = screenHeight / 42.2;
  static double width15 = screenHeight / 56.27;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;

//Dynamic font
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  static double font12 = screenHeight / 70.33;
  static double font16 = screenHeight / 52.75;

  //Dynamic radius
  static double radius30 = screenHeight / 28.13;
  static double radius20 = screenHeight / 42.2;
  static double radius15 = screenHeight / 56.27;
  static double radius5 = screenHeight / 168.8;

  //Dynamic icon size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize15 = screenHeight / 56.27;
  static double iconSize16 = screenHeight / 52.75;

//splash image
  static double spalshImg = screenHeight / 2;
// screen height for login
  static double screenHeightLogin = screenHeight / 5.5;
  static double screenHeightLogin2 = screenHeight /1.7;
}
