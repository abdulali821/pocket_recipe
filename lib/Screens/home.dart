import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pocket_recipe/Custom%20Widgets/button.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Custom%20Widgets/customCont.dart';
import 'package:pocket_recipe/Custom%20Widgets/drawerList.dart';
import 'package:pocket_recipe/Custom%20Widgets/para.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_recipe/Custom%20Widgets/textfield.dart';
import 'package:pocket_recipe/management/myProvider.dart';
import 'package:pocket_recipe/services/loaddata.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List allRecipes = [];

  Map allrecipes = {};

  @override
  void initState() {
    loadMyData(recipeName: "recipeName");
    super.initState();
  }

  loadMyData({required String recipeName}) async {
    var recipes = await Dio().get(
        "https://api.edamam.com/search?q=rice&app_id=df78c617&app_key=079728e1943ed2579131f8f0587b5586#");
    allrecipes = recipes.data;
    print(allrecipes);
    print(allrecipes["q"]);
    print(allrecipes["hits"]);
  }

  bool isOn = true;
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: Scaffold(
        body: Consumer<MyProvider>(
          builder: (context, dataaa, child) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 60.h,
                      left: 28.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Customtext(
                              'Find Best Recipe',
                              MyColors.darkBlack,
                              30.sp,
                              FontWeight.bold,
                              TextAlign.start),
                        ),
                        Customtext('For Cooking', MyColors.darkBlack, 30.sp,
                            FontWeight.bold, TextAlign.start),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customField(
                          45.h,
                          306.w,
                          80.r,
                          MyColors.white,
                          Colors.transparent,
                          Icon(Icons.search_rounded),
                          'Search Destination',
                          false,
                          search),
                      Container(
                          width: 30.w,
                          height: 30.h,
                          child: GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/icons/filtericon.png'))),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      itemCount: dataaa.category.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            customBtn(
                                60.h,
                                80.w,
                                dataaa.indexList == i
                                    ? MyColors.lightYellow
                                    : Colors.transparent,
                                Colors.transparent,
                                80.r, () {
                              dataaa.selectedItem(i);
                            }, Text(dataaa.category[i])),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 636.25.h,
                    child: GridView.builder(
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 22,
                          crossAxisSpacing: 4,
                          childAspectRatio: 5 / 7),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: container(
                            NetworkImage(
                                'https://blog.logrocket.com/wp-content/uploads/2021/04/ultimate-guide-text-fields-flutter.jpg'),
                            'Ali',
                            'Semester1',
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        drawer: Drawer(
          elevation: 20,
          child: Container(
            color: MyColors.yellow,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 42.h),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/logo/logo.png',
                        height: 100.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Customtext('POCKET', MyColors.darkBlack, 16,
                                FontWeight.w500, TextAlign.center),
                            SizedBox(
                              width: 10.w,
                            ),
                            Customtext('RECIPE', MyColors.white, 16,
                                FontWeight.w500, TextAlign.center),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: MyColors.white,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      drawerList(Icons.home_outlined, 'Home', () {},
                          SizedBox.shrink()),
                      drawerList(Icons.bookmark_outline_outlined, 'Saved',
                          () {}, SizedBox.shrink()),
                      drawerList(Icons.star_border_outlined, 'Rate us', () {},
                          SizedBox.shrink()),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: MyColors.white,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Consumer<MyProvider>(
                        builder: (context, dataaa, child) => drawerList(
                            Icons.notifications_on_outlined,
                            'Notfications',
                            () {},
                            Switch(
                                value: dataaa.isOn,
                                onChanged: (val) {
                                  dataaa.isSwitchOn(val);
                                })),
                      ),
                      drawerList(Icons.logout_sharp, 'Logout', () {},
                          SizedBox.shrink()),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.w, bottom: 15.h),
                      child: Text(
                        'App Version 1.0.0',
                        style: TextStyle(
                            color: MyColors.lightBlack.withOpacity(0.6)),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
