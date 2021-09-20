import 'package:flutter/material.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget nutrition(
  String nutri,
  String unit,
  int ammount,
  Color color1,
  Color color2,
) {
  return Container(
    height: 60.h,
    width: 180.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(80),
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomCenter,
        colors: [
          color1,
          color2,
        ],
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.white.withOpacity(0.5)),
          child: Center(
              child: Text(
            ammount.toString(),
            style: TextStyle(color: MyColors.white, fontSize: 16.sp),
          )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nutri,
              style: TextStyle(
                color: MyColors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(unit,
                style: TextStyle(color: MyColors.white, fontSize: 16.sp)),
          ],
        ),
        SizedBox(
          width: 50.w,
        ),
      ],
    ),
  );
}
