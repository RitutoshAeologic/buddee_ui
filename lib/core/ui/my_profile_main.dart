import 'package:buddee_ui/core/constants/colors.dart';
import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:buddee_ui/core/ui/my_profile_list.dart';
import 'package:buddee_ui/core/ui/profile_photo_gallery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/icon_constants.dart';

class MainMyProfile extends StatefulWidget {
  const MainMyProfile({Key? key}) : super(key: key);

  @override
  State<MainMyProfile> createState() => _MainMyProfileState();
}

class _MainMyProfileState extends State<MainMyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.58,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppIcons.myprofilebgjpg),
                      fit: BoxFit.fill
                  )
              ),
              child:
            Column(
              children: [
                 Padding(padding: EdgeInsets.only(left: 17,right: 17,top: 44,bottom: 12),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(AppStrings.myprofileText,style: AppTextStyle.text14,),
                     InkWell(
                         onTap: (){Get.to(()=>MyProfileList());},
                         child: SvgPicture.asset(AppIcons.menu))
                   ],
                 ),),
                Stack(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.white,
                    border: Border.all(color: AppColors.white,
                        width: 4),),
                      child: CircleAvatar(
                        child: Image.asset(AppIcons.personpng,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 90,
                        right: 0,
                        child: IconButton(
                      onPressed: (){Get.to(()=>ProfilePhoto());},
                      icon: SvgPicture.asset(AppIcons.camera),
                    ))
                  ],
                ),
                SizedBox(height: 16,),
                Text('User Name',style: AppTextStyle.userNameText,),
                SizedBox(height: 8,),
              Center(
                child:  Row(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.location,)),
                    SizedBox(width: 6,),
                    Text('London',style: AppTextStyle.text15,),
                  ],
                ),
              ),
                SizedBox(height: 16,),
      Center(
        child: Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.materialGradient1,
                  AppColors.materialGradient1,
                  AppColors.materialGradient2,
                ],
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.materialshadowColor,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0,1),
                )
              ]
          ),
          child:
          MaterialButton(
            // color: Colors.deepOrangeAccent,
              onPressed: (){},
              // height: ScreenUtil().setHeight(48),
              //minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child:
              Padding(
                padding: const EdgeInsets.only(top: 2.0,right: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.diamond),
                    Text('Premium',
                        // textAlign: TextAlign.center,
                        style: AppTextStyle.text16
                    ),
                  ],
                ),
              )
          ),
        ),
      )
              ],
            )
            ),

            SizedBox(height: ScreenUtil().setHeight(29),),

            //SizedBox(height: ScreenUtil().setHeight(25),),
          ],
        ),
      ),
    );
  }
}
