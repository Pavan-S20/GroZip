import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gro_zip/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:gro_zip/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgName: "onboarding.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "India's Fastest Delivery",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontfamily: "bold",
                fontsize: 20
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                        text: "Paras",
                        color: Color(0XFF000000),
                        fontweight: FontWeight.w500,
                        fontsize: 14),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "78277xxxxx",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.bold,
                        fontsize: 14,
                        fontfamily: "bold"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomText(
                                  text: "Login with",
                                  color: Color(0XFFFFFFFF),
                                  fontweight: FontWeight.bold,
                                  fontsize: 14,
                                  fontfamily: "bold",
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              UiHelper.customImage(imgName: "google-logo2.png"),
                            ],
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text: "Access your saved addresses from Google automatically",
                        color: Color(0XFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                      text: "or login with phone number",
                      color: Color(0XFF269237),
                      fontweight: FontWeight.bold,
                      fontsize: 10,
                      fontfamily: "bold",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}