import 'package:flutter/material.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';

Widget customField(
    double h,
    double w,
    double r,
    Color conColor,
    Color shadColor,
    Icon icon,
    String hintText,
    Function(String value) onChange) {
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(r),
      color: conColor,
      boxShadow: [
        BoxShadow(
          color: shadColor,
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ],
    ),
    child: TextField(   
      onChanged: onChange,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        border: InputBorder.none,

      ),
    ),
  );
}
