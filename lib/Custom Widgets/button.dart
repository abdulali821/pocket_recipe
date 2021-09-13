import 'package:flutter/material.dart';

Widget customBtn(
  double h,
  double w,
  Color color,
  Color borderCol,
  double conRad,
  VoidCallback ontap,
  Widget text,
) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        border: Border.all(color: borderCol),
        color: color,
        borderRadius: BorderRadius.circular(conRad),
      ),
      child: Center(child: text),
    ),
  );
}
