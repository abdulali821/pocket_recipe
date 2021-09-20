import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pocket_recipe/Screens/home.dart';
import 'package:pocket_recipe/Screens/loginPage.dart';
import 'package:pocket_recipe/Screens/recipeDetails.dart';
import 'package:pocket_recipe/Screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () => GetMaterialApp(
            transitionDuration: Duration(seconds: 2),
            defaultTransition: Transition.native,
            debugShowCheckedModeBanner: false,
            home: Home(),
          )));
}
