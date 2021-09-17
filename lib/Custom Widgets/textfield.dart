import 'package:flutter/material.dart';

Widget customField(
    double h,
    double w,
    double r,
    Color conColor,
    Color shadColor,
    Icon icon,
    String hintText,
    bool type,
    TextEditingController onChange) {
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
      controller: onChange,
      autofocus: false,
      obscureText: type,
      autocorrect: false,
      enableSuggestions: false,
      decoration: InputDecoration(
        focusColor: Colors.black,
        prefixIcon: icon,
        hintText: hintText,
        border: InputBorder.none,
      ),
    ),
  );
}
