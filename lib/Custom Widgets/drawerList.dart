import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';

Widget drawerList(
  IconData icon,
  String title,
  VoidCallback ontap,
  Widget swi,
) {
  return GestureDetector(
    onTap: ontap,
    child: ListTile(
      leading: Icon(
        icon,
        size: 30.h,
        color: MyColors.darkBlack,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
      ),
      trailing: swi,
    ),
  );
}
