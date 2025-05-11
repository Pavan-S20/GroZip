import 'package:flutter/material.dart';

class UiHelper{
  static Widget customImage({required String imgName}) {
    return Image.asset("assets/images/$imgName");
  }


}