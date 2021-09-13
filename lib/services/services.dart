import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pocket_recipe/Screens/home.dart';

class Services {
  FirebaseAuth auth = FirebaseAuth.instance;

  void signup(String email, String password) async {
    await auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      signin(email, password);
    });
  }

  void signin(String email, String password) async {
    await auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Get.to(Home());
    });
  }
}
