import 'dart:async';

import 'package:bellboy/routes/route_helper.dart';
import 'package:bellboy/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
     {
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // I made the splash screen stay for 3 seconds to make it visisble 
    Timer(const Duration(seconds: 1), () => Get.toNamed(RouteHelper.getInitial()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
                height: Dimensions.spalshImg,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash.JPG'))
                ),
              )
              
              
           ),
        ],
      ),
    );
  }
}
