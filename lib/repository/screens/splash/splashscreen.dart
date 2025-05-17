import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gro_zip/repository/screens/login/loginScreen.dart';

import '../../../domain/constants/appcolors.dart';
import '../../widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(
            seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context)=> LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.gradient2,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customImage(imgName: "splash.png"),
            ],
          ),
        ),
      ),
    );
  }
}