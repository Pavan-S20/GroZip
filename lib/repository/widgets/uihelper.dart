import 'package:flutter/material.dart';

class UiHelper{
  static Widget customImage({required String imgName}) {
    return Image.asset("assets/images/$imgName");
  }

  static CustomText(
      {required String text,
        required Color color,
        required FontWeight fontweight,
        String? fontfamily,
        required double fontsize})
    {return Text(
      text,
      style:  TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily ?? "regular",
          color: color),
    );
  }
}