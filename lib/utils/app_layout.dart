import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{

  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(){
    return Get.height;
  }

  static getScreenWidth(){
    return Get.width;
  }

  static getHeightOf(double pixels){
    // It gives us a proportion
    double x = getScreenHeight()/pixels;

    //It gives us the actual height with that proportion.
    return getScreenHeight()/x;
  }

  static getWidthOf(double pixels){
    // It gives us a proportion
    double x = getScreenWidth()/pixels;

    //It gives us the actual height with that proportion.
    return getScreenWidth()/x;
  }
}