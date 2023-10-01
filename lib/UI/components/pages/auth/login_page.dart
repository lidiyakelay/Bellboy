import 'package:bellboy/UI/components/custom_icon.dart';
import 'package:bellboy/controller/login_controller.dart';
import 'package:bellboy/utils/colors.dart';
import 'package:bellboy/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.find();
  bool _keyboardVisible = true;
 
  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    loginController.setVisiblity = _keyboardVisible;
    loginController.keybordvisiblity();
    return Scaffold(
      backgroundColor: CustomColor.background,
      body: Column(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20 * 4,
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      bottom: Dimensions.height20 * 1.5),
                  child: Text(
                    'Log in ',
                    style: TextStyle(
                        fontSize: Dimensions.font26,
                        color: CustomColor.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: Obx(
                    () => TextField(
                      autofocus: true,
                      controller: loginController.emailController.value,
                      style: TextStyle(
                          fontSize: Dimensions.font20 * 1.1,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.activeGrey),
                      decoration: InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                          fontSize: Dimensions.font20,
                          color: CustomColor.inactiveGrey,
                        ),
                        suffix: CustomIcon(
                          onTap: () {
                            loginController.clearEmail();
                          },
                          containerColor:
                              loginController.iconContainerColor.value,
                          iconColor: loginController.iconColor.value,
                        ),
                        labelText: loginController.labeltext.value,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font12 * 1.5,
                          color: CustomColor.inactiveGrey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: loginController.borderlineColor.value),
                        ),
                      ),
                      cursorColor: CustomColor.cursorColors,
                      onChanged: (value) {
                        loginController.startedTyping();
                        loginController.isEmail();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: loginController.height.value,
                      left: Dimensions.width20 * 5,
                      right: Dimensions.width20 * 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          bottom: Dimensions.height10 /
                              3, // space between underline and text
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: CustomColor.inactiveGrey, // Text colour here
                          width: 1.0, // Underline width
                        ))),
                        child: Text(
                          "Find e-mail",
                          style: TextStyle(
                            fontSize: Dimensions.font16,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.inactiveGrey, // Text colour here
                          ),
                        ),
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                            fontSize: Dimensions.font16,
                            color: CustomColor.inactiveGrey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: Dimensions.height10 /
                              3, // space between underline and text
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: CustomColor.inactiveGrey, // Text colour here
                          width: 1.0, // Underline width
                        ))),
                        child: Text(
                          "Find password",
                          style: TextStyle(
                            fontSize: Dimensions.font16,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.inactiveGrey, // Text colour here
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    height: Dimensions.height20 * 3,
                    margin: EdgeInsets.all(Dimensions.height20),
                    padding: EdgeInsets.all(Dimensions.height10),
                    decoration: BoxDecoration(
                        color: loginController.buttonColor.value,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    child: Text(
                      loginController.buttonText.value,
                      style: TextStyle(
                          fontSize: Dimensions.font20 * 1.1,
                          color: Colors.white),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
