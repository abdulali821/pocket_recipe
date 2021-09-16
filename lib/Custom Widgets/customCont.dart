import 'package:flutter/material.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';

Widget container(
  String title,
  String subtitle,
) {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/onboard.png'), fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.white),
          ),
          subtitle: Text(subtitle),
        ),
      ],
    ),
  );
}
