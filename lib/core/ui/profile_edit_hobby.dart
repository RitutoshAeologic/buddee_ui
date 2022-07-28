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
            Padding(
              padding: const EdgeInsets.only(top: 35,bottom: 17,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                  IconButton(
                    onPressed: (){Get.back();},
                    icon: SvgPicture.asset(AppIcons.backarrow,
                      height: 15.86,
                      //ScreenUtil().setHeight(15.86),
                      width: 8.89,
                      //ScreenUtil().setWidth(8.89),
                      color: AppColors.backarrowsvg,
                    ),
                  ),
                  //SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                  ),
                ],
              ),
            ),

            Center(child: Text(AppStrings.editHobbies,style: AppTextStyle.blueboldtext )),

            Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 29,bottom: 8),
              child: Text(AppStrings.discussText,style: AppTextStyle.lightbluetext ),
            ),
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
                  focusedBorder: OutlineInputBorder(
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
            ),

            Padding(
              padding: const EdgeInsets.only(right: 18.0,left: 16,top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:EdgeInsets.only(left: 9.0),
                    height: 32,
                    width: 152,
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
                    child:Row(
                      children: [
                        Expanded(child: Text('Photography',
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.text10,)),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.delete,
                  height: 20,))
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(AppStrings.addDescripText,style: AppTextStyle.text6,),
            ),
            SizedBox(height: 8),
            Container(
              height: 153,
              width: 343,
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
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: 'Hobbies Description',
                  hintStyle: AppTextStyle.text6,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                ),
              ),
            ),

            SizedBox(height:104),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.saveText, onTap: (){
                Get.to(()=>ProfileSaveHobbyList());
              }),
            ),
            SizedBox(height: 36),

          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
