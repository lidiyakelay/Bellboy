import 'package:bellboy/utils/colors.dart';
import 'package:bellboy/utils/dimensions.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
                    
  var emailController = TextEditingController().obs;
  var height = Dimensions.screenHeightLogin.obs;
  var gap = 0.0.obs;
  var borderlineColor = CustomColor.inactiveGrey.obs;
  var labeltext = ''.obs;
  var iconColor = Colors.transparent.obs;
  var iconContainerColor = Colors.transparent.obs;
  var buttonColor = CustomColor.inactiveGrey.obs;
  var buttonText = 'Enter your e-mail address'.obs;
  bool _keyboardVisible = true;
  

  set setVisiblity(bool visible) {
    _keyboardVisible = visible;
  }

  void clearEmail() {
    emailController.value.text = '';
    isEmail();
    startedTyping();
  }

  void isEmail() {
    if (emailController.value.text.isNotEmpty) {
      if (EmailValidator.validate(emailController.value.text)) {
        buttonColor.value = CustomColor.activeGrey;
        buttonText.value = 'Next';
      } else {
        buttonColor.value = CustomColor.inactiveGrey;
        buttonText.value = 'Enter your e-mail address';
      }
    } else {
      buttonColor.value = CustomColor.inactiveGrey;
      buttonText.value = 'Enter your e-mail address';
    }
  }

  void keybordvisiblity() {
    if (_keyboardVisible) {
      height.value = Dimensions.screenHeightLogin;
      //gap.value = Dimensions.height10;
    } else {
      height.value = Dimensions.screenHeight / 1.7;
      //gap.value =  Dimensions.screenHeightLogin;
    }
  }

  void startedTyping() {
    if (emailController.value.text.isNotEmpty) {
      labeltext.value = 'E-mail';
      borderlineColor.value = CustomColor.activeGrey;
      iconColor.value = Colors.white;
      iconContainerColor.value = CustomColor.inactiveGrey;
    } else {
      labeltext.value = '';
      borderlineColor.value = CustomColor.inactiveGrey;
      iconColor.value = Colors.transparent;
      iconContainerColor.value = Colors.transparent;
    }
  }

  


  
}