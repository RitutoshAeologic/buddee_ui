

import 'package:buddee_ui/core/ui/info.dart';
import 'package:buddee_ui/core/ui/my_profile_main.dart';
import 'package:buddee_ui/core/ui/profile_hobby.dart';
import 'package:buddee_ui/core/ui/profile_privacy.dart';
import 'package:buddee_ui/core/ui/profile_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/bottom_navigation.dart';
import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';

class MyProfileList extends StatefulWidget {
  const MyProfileList({Key? key}) : super(key: key);

  @override
  State<MyProfileList> createState() => _MyProfileListState();
}

class _MyProfileListState extends State<MyProfileList> {
  var orientation, size,height,width;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height*0.784,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppIcons.mainprofilebgjpg),
                      fit: BoxFit.fill
                  )
              ),
              child:
              Padding(
                padding: const EdgeInsets.only(top: 35,right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                         Row(

                           children: [
                             IconButton(
                               onPressed: (){Get.to(()=>MainMyProfile());},
                               icon: SvgPicture.asset(AppIcons.backarrow,
                               height: 15.86,
                               //ScreenUtil().setHeight(15.86),
                                //width: ScreenUtil().setWidth(8.89),
                                color: AppColors.backarrowsvg,
                                ),
                             ),
                        SizedBox(width:
                        //ScreenUtil().setWidth(30.06) ,
                        10
                        ),
                        Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                           ],
                         ),
                        //SizedBox(width:ScreenUtil().setWidth(172) ,),
                        Row(
                         // mainAxisAlignment: MainAxisAlignment.start,
                         // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: (){},
                                icon: SvgPicture.asset(AppIcons.close)),
                          ],
                        ),
                      //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                      ],
                    ),
                    SizedBox(height:
                   // ScreenUtil().setHeight(154),
                   MediaQuery.of(context).size.height*0.144
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0,left: 16),
                      child: InkWell(
                        onTap: (){Get.to(()=> BottomNavigatior());},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppStrings.infoText,style: AppTextStyle.text13,),
                            //SizedBox(width:ScreenUtil().setWidth(172) ,),
                            SvgPicture.asset(AppIcons.circle),
                            //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.054
                   // ScreenUtil().setHeight(44),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0,left: 16),
                      child: InkWell(
                        onTap: (){Get.to(()=> ProfileHobby());},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppStrings.hobbiesText,style: AppTextStyle.text13,),

                            SvgPicture.asset(AppIcons.circle),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height:
                        height*0.064
                    //ScreenUtil().setHeight(54),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0,left: 16),
                      child: InkWell(
                        onTap: (){Get.to(()=>ProfileSearch());},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppStrings.searchSettingsText,style: AppTextStyle.text13,),

                            SvgPicture.asset(AppIcons.circle),

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height:
                    49),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0,left: 16),
                      child: InkWell(
                        onTap: (){Get.to(()=>ProfilePrivacy());},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Text(AppStrings.privacyPolicyText,style: AppTextStyle.text13,),
                           // SizedBox(width:ScreenUtil().setWidth(172) ,),
                            SvgPicture.asset(AppIcons.circle),
                            //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height:121
              //ScreenUtil().setHeight(121),
            ),
            Text(AppStrings.logoutText,style: AppTextStyle.logouttext,),
            SizedBox(height: 44
              //ScreenUtil().setHeight(121),
            ),


          ],
        ),
      ),
    );
  }
}
