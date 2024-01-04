import 'controller/splash_controller.dart';
import 'package:fintek/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 376.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: CustomImageView(
                              imagePath: ImageConstant.img151,
                              height: 888.v,
                              width: 414.h)))
                ]))));
  }
}
