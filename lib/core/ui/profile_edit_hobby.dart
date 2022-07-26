import 'package:buddee_ui/core/ui/profile_save_hobby.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/material_button.dart';

class ProfileEditHobby extends StatefulWidget {
  const ProfileEditHobby({Key? key}) : super(key: key);

  @override
  State<ProfileEditHobby> createState() => _ProfileEditHobbyState();
}

class _ProfileEditHobbyState extends State<ProfileEditHobby> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //     padding:  EdgeInsets.only(left: 25.06,),
      //     child: Icon(Icons.arrow_back_ios,color: AppColors.backarrow,size: 18.r),
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(43),),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                  InkWell(
                    onTap: (){Get.back();},
                    child: SvgPicture.asset(AppIcons.backarrow,
                      height: ScreenUtil().setHeight(15.86),
                      width: ScreenUtil().setWidth(8.89),
                      color: AppColors.backarrowsvg,
                    ),
                  ),
                  SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                  Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(28),),
            Center(child: Text(AppStrings.editHobbies,style: AppTextStyle.blueboldtext )),
            SizedBox(height: ScreenUtil().setHeight(29),),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(AppStrings.discussText,style: AppTextStyle.lightbluetext ),
            ),
            SizedBox(height: ScreenUtil().setHeight(8),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: AppStrings.searchTitle,
                  hintStyle: AppTextStyle.lightgreytext,
                  prefixIcon: Icon(Icons.search,color: AppColors.lightgreyTextColor,),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(24),),
            Padding(
              padding: const EdgeInsets.only(right: 18.0,left: 16),
              child: Row(
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
                      padding: const EdgeInsets.only(left: 9,top:9),
                      child: Text('Photography', style: AppTextStyle.text10,),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.delete))
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(40),),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(AppStrings.addDescripText,style: AppTextStyle.text6,),
            ),
            SizedBox(height: ScreenUtil().setHeight(8),),
            Container(
              height: ScreenUtil().setHeight(153),
              width: ScreenUtil().setWidth(343),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: 'Hobbies Description',
                  hintStyle: AppTextStyle.text6,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                ),
              ),
            ),

            SizedBox(height: ScreenUtil().setHeight(104),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.saveText, onTap: (){
                Get.to(()=>ProfileSaveHobbyList());
              }),
            )

          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
