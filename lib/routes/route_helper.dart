import 'package:bellboy/UI/components/pages/auth/login_page.dart';
import 'package:bellboy/UI/components/pages/splash/splash.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const initial = '/';
  static const splash = '/splash';

  static String getInitial() => '$initial';
  static String getSplash() => '$splash';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: initial, page: () => LoginPage()),
  ];
}
