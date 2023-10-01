import 'package:bellboy/controller/login_controller.dart';
import 'package:get/get.dart';

class Dependencies implements Bindings {

 @override
  Future<void> dependencies() async{
      Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  }
}