import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Custom%20Widgets/para.dart';
import 'package:pocket_recipe/Screens/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() {
    Timer(Duration(seconds: 2), () {
      Get.off(OnBoard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/logo/logo.png')),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtext('POCKET', MyColors.darkBlack, 22, FontWeight.w500,
                  TextAlign.center),
              SizedBox(
                width: 10.w,
              ),
              Customtext('RECIPE', MyColors.white, 22, FontWeight.w500,
                  TextAlign.center)
            ],
          ),
        ],
      ),
    );
  }
}
