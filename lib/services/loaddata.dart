import 'package:dio/dio.dart';

class LoadData {
  List allRecipes = [];

  loadMyData({required String recipeName}) async {
    var recipes = await Dio().get(
        "https://api.edamam.com/search?q=rice&app_id=df78c617&app_key=079728e1943ed2579131f8f0587b5586#");
    allRecipes = recipes.data;
    print(allRecipes);
  }
}
