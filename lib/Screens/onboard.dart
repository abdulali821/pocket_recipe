import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Custom%20Widgets/para.dart';
import 'package:pocket_recipe/Screens/loginPage.dart';
import 'package:slide_to_act/slide_to_act.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/onboard.png',
                fit: BoxFit.cover,
              )),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: MyColors.darkBlack.withOpacity(0.5),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350.h,
              ),
              Customtext(
                  'Cooking Experience\nLike a chef',
                  MyColors.lightYellow,
                  38.sp,
                  FontWeight.bold,
                  TextAlign.center),
              SizedBox(
                height: 8.h,
              ),
              Customtext(
                  'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...',
                  MyColors.grey,
                  13.sp,
                  FontWeight.w200,
                  TextAlign.center),
              SizedBox(
                height: 213.h,
              ),
              Container(
                width: 320.w,
                child: SlideAction(
                  borderRadius: 40.r,
                  sliderButtonYOffset: 0,
                  height: 65.h,
                  sliderButtonIconPadding: 15.r,
                  elevation: 20,
                  sliderButtonIconSize: 30.h,
                  sliderRotate: true,
                  sliderButtonIcon: Container(
                      height: 28.h,
                      width: 28.w,
                      child: Icon(Icons.arrow_forward)),
                  innerColor: MyColors.lightYellow,
                  outerColor: MyColors.white,
                  animationDuration: Duration(milliseconds: 800),
                  submittedIcon: Icon(
                    Icons.done,
                    size: 40.h,
                  ),
                  onSubmit: () {
                    Get.off(LoginPage());
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Customtext('Get Started', MyColors.darkBlack, 20.sp,
                        FontWeight.w500, TextAlign.center),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
