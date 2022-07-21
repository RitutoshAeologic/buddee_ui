import 'package:buddee_ui/core/constants/icon_constants.dart';
import 'package:buddee_ui/core/widget/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/hobbies_strings.dart';

class SaveHobbie extends StatefulWidget {
  const SaveHobbie({Key? key}) : super(key: key);

  @override
  State<SaveHobbie> createState() => _SaveHobbieState();
}

class _SaveHobbieState extends State<SaveHobbie> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: AppColors.black,),
        backgroundColor: AppColors.white,
      ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(15),),
            Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
            SizedBox(height: ScreenUtil().setHeight(35),),
            Text(AppStrings.searchText,style: AppTextStyle.lightbluetext ),
            SizedBox(height: ScreenUtil().setHeight(10),),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                filled: true,
                fillColor: AppColors.white,
                hintText: AppStrings.searchTitle,
                hintStyle: AppTextStyle.lightgreytext,
                prefixIcon: Icon(Icons.search,color: AppColors.lightgreyTextColor,),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(15),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                        height: ScreenUtil().setHeight(32),
                        width: ScreenUtil().setWidth(152),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.genderbg1Color,
                                AppColors.genderbg2Color,
                              ],
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8.0),
                            ),

                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10,top:5),
                          child: Text('Badminton', style: AppTextStyle.text10,),
                        ),
                      ),
                IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.delete))
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(20),),
            Text(AppStrings.lookingText,style: AppTextStyle.lightbluetext,),
      SizedBox(height: ScreenUtil().setHeight(15),),
      Container(
        height: ScreenUtil().setHeight(114),
        width: ScreenUtil().setWidth(343),
        child: TextField(
          maxLines: 10,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
            ),
            filled: true,
            fillColor: AppColors.white,
            hintText: 'Hobbies Description',
            hintStyle: AppTextStyle.text3,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
          ),
        ),
      ),

            SizedBox(height: ScreenUtil().setHeight(130),),
            MaterialButtonBox(title: AppStrings.saveText, onTap: (){})

          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
