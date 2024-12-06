import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {

  static HomeController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }


}