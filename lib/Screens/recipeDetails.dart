import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_recipe/Custom%20Widgets/colors.dart';
import 'package:pocket_recipe/Custom%20Widgets/nutritionsList.dart';

class RecipeDetails extends StatefulWidget {
  RecipeDetails({Key? key}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: Icon(Icons.arrow_back_outlined, color: MyColors.darkBlack),
        actions: [
          Icon(Icons.bookmark_outline_outlined, color: MyColors.darkBlack),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
                height: 250.h,
                width: 250.w,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Image.asset(
                  'assets/images/onboard.png',
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'Lorem',
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Text(
                'Lorem ispum',
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Text(
              'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown ...',
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          ListTile(
            title: Text(
              'Nutrition',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      nutrition('Protein', 'Gram', 250, MyColors.white,
                          MyColors.darkPink.withOpacity(0.9)),
                      nutrition('Carbon', 'Gram', 250, MyColors.white,
                          MyColors.purple.withOpacity(0.9)),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      nutrition('Calcium', 'Gram', 250, MyColors.white,
                          MyColors.green.withOpacity(0.9)),
                      nutrition('Calories', 'Gram', 250, MyColors.white,
                          MyColors.blue.withOpacity(0.9)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ListTile(
            title: Text(
              'Ingrediants',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Text('Lorem Ispum');
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
