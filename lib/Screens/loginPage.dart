import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_recipe/Custom%20Widgets/button.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Custom%20Widgets/textfield.dart';
import 'package:pocket_recipe/services/services.dart';
import 'package:pocket_recipe/Custom%20Widgets/para.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Services myservices = Services();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            Image.asset('assets/logo/logo2.png'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtext('POCKET', MyColors.darkBlack, 22, FontWeight.w500,
                      TextAlign.center),
                  SizedBox(
                    width: 10.w,
                  ),
                  Customtext('RECIPE', MyColors.yellow, 22, FontWeight.w500,
                      TextAlign.center),
                ],
              ),
            ),
            SizedBox(
              height: 65.33.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 145.w, left: 39.w),
              child: Customtext('Login to your Account', MyColors.darkBlack,
                  18.sp, FontWeight.w400, TextAlign.start),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 39.w, right: 43.w),
              child: customField(50.h, 332.w, 80.r, MyColors.white,
                  Color(0xffEEE2BE), Icon(Icons.person), 'Email', (val) {
                email = val;
              }),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 39.w, right: 43.w),
              child: customField(50.h, 332.w, 80.r, MyColors.white,
                  Color(0xffEEE2BE), Icon(Icons.lock), 'Password', (val) {
                password = val;
              }),
            ),
            SizedBox(
              height: 72.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 39.w, right: 43.w),
              child: customBtn(
                50.h,
                332.w,
                MyColors.lightYellow,
                Colors.transparent,
                80.r,
                () {
                  myservices.signup(email!, password!);
                },
                Customtext('LOGIN', MyColors.darkBlack, 20.sp, FontWeight.w600,
                    TextAlign.center),
              ),
            ),
            SizedBox(
              height: 57.33.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.h,
                  width: 100.w,
                  color: MyColors.darkBlack,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Customtext('or', MyColors.darkBlack, 20.sp, FontWeight.bold,
                    TextAlign.center),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  height: 1.h,
                  width: 100.w,
                  color: MyColors.darkBlack,
                ),
              ],
            ),
            SizedBox(
              height: 41.6.h,
            ),
            Customtext('Continue With', MyColors.blue, 13.sp, FontWeight.w200,
                TextAlign.center),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 39.w, right: 43.w),
              child: customBtn(
                  50.h,
                  332.w,
                  MyColors.white,
                  MyColors.darkBlack,
                  80.r,
                  () {},
                  Customtext('As a Guest', MyColors.darkBlack, 20.sp,
                      FontWeight.w400, TextAlign.center)),
            ),
            SizedBox(
              height: 99.h,
            ),
          ],
        ),
      ),
    );
  }
}
