import 'package:buddee_ui/core/ui/profile_select_hobby.dart';
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
import '../widget/plain_material_button.dart';

class ProfileSaveHobbyList extends StatefulWidget {
  const ProfileSaveHobbyList({Key? key}) : super(key: key);

  @override
  State<ProfileSaveHobbyList> createState() => _ProfileSaveHobbyListState();
}

class _ProfileSaveHobbyListState extends State<ProfileSaveHobbyList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(43),),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
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
            SizedBox(height: ScreenUtil().setHeight(26),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(child: Text(AppStrings.myHobbies,style: AppTextStyle.text8,textAlign: TextAlign.center,)),
            ),
            SizedBox(height: ScreenUtil().setHeight(35),),
            //SizedBox(height: ScreenUtil().setHeight(36),),
            Center(child: Text('You have three hobbies',style: AppTextStyle.text9,)),
            SizedBox(height: ScreenUtil().setHeight(25),),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 9.0),
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
                            child:Row(
                              children: [
                                Text('Badminton', style: AppTextStyle.text10,),
                              ],
                            ),
                          ),
                          //SizedBox(width: ScreenUtil().setWidth(123.5),),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Row(children: [
                              InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.edit,
                                height: ScreenUtil().setHeight(19),)),
                              SizedBox(width: ScreenUtil().setWidth(29),),
                              InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.delete,
                                height: ScreenUtil().setHeight(19),)),
                            ],),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: ScreenUtil().setHeight(16),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16 ),
                      child: Container(
                        height: ScreenUtil().setHeight(75),
                        child: Text('Intermediate level, looking for a partner to play weekdays after work. Committed but not too serious',
                          style: AppTextStyle.text6,),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(40),),
                  ],
                );
              },
            ),
            SizedBox(height: ScreenUtil().setHeight(83),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: PlainMaterialButtonBox(title: AppStrings.saveText, onTap: (){
                //Get.to();
              }),
            ),
            SizedBox(height: ScreenUtil().setHeight(15),),


          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
