import 'package:buddee_ui/core/ui/profile_hobby.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 35,bottom: 18,),
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(child: Text(AppStrings.myHobbies,style: AppTextStyle.text8,textAlign: TextAlign.center,)),
            ),
            const SizedBox(height: 35),
            Center(child: Text('You have three hobbies',style: AppTextStyle.text9,)),
            const SizedBox (height: 25),
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
                                Expanded(child: Text('Badminton',
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.text10,)),
                              ],
                            ),
                          ),
                          //SizedBox(width: ScreenUtil().setWidth(123.5),),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Row(children: [
                              InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.edit,
                                height: 19)),
                              SizedBox(width: 29),
                              InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.delete,
                                height: 19)),
                            ],),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height:16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16 ),
                      child: Container(
                        height: 75,
                        child: Text('Intermediate level, looking for a partner to play weekdays after work. Committed but not too serious',
                          style: AppTextStyle.text6,),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                );
              },
            ),
            SizedBox(height:96),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: PlainMaterialButtonBox(title: AppStrings.saveText, onTap: (){
                Get.to(()=> ProfileHobby());
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
