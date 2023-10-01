import 'package:bellboy/helper/dependency.dart';
import 'package:bellboy/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Dependencies mainBinding = Dependencies();
  await mainBinding.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ExportDataSettingPage(),
      initialRoute: RouteHelper.getSplash(),
      getPages: RouteHelper.routes,
    );
  }
}
