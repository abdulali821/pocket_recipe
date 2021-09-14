import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Services {
  BuildContext context;
  Services(this.context);
  var error;
  FirebaseAuth auth = FirebaseAuth.instance;

  void signup(String email, String password) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        signin(email, password);
      });
    } on FirebaseAuthException catch (er) {
      if (er.code == 'weak-password') {
        myDialog('The password provided is too weak.');
      } else if (er.code == 'email-already-in-use') {
        myDialog('User Already Exist');
      } else if (er.code == 'invalid-email') {
        myDialog('Email is invalid!');
      }
    } catch (error) {
      print(error.toString());
    }
  }

  void myDialog(String str) {
    AwesomeDialog(
            context: context,
            animType: AnimType.SCALE,
            dialogType: DialogType.WARNING,
            body: Center(
              child: Text(
                str,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            btnOkOnPress: () {},
            width: 350.w,
            btnOkColor: MyColors.lightYellow)
        .show();
  }

  void signin(String email, String password) async {
    await auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.off(Home());
    });
  }
}
