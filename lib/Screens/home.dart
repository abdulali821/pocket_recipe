import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pocket_recipe/Custom%20Widgets/button.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Custom%20Widgets/customCont.dart';
import 'package:pocket_recipe/Custom%20Widgets/para.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_recipe/Custom%20Widgets/textfield.dart';
import 'package:pocket_recipe/management/myProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        Customtext('Find Best Recipe', MyColors.darkBlack,
                            30.sp, FontWeight.bold, TextAlign.start),
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
                          child: Image.asset('assets/icons/filtericon.png')),
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
      ),
    );
  }
}
