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
        print('The password provided is too weak.');
      } else if (er.code == 'email-already-in-use') {
        AwesomeDialog(
                context: context,
                animType: AnimType.SCALE,
                dialogType: DialogType.WARNING,
                body: Center(
                  child: Text(
                    'The user is already exist!',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                btnOkOnPress: () {},
                width: 350.w,
                btnOkColor: MyColors.lightYellow)
            .show();

        ////////////

      }
    } catch (error) {
      print(error.toString());
    }
  }

  void signin(String email, String password) async {
    await auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.to(Home());
    });
  }
}
