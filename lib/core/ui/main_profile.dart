

import 'package:buddee_ui/core/ui/info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/bottom_navigation.dart';
import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(580),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppIcons.mainprofilebgjpg),
                      fit: BoxFit.fill
                  )
              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 51,right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                         InkWell(
                           child: SvgPicture.asset(AppIcons.backarrow,
                            height: ScreenUtil().setHeight(15.86),
                            width: ScreenUtil().setWidth(8.89),
                            color: AppColors.backarrowsvg,
                            ),
                         ),
                        SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                        Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                        SizedBox(width:ScreenUtil().setWidth(172) ,),
                        InkWell(child: SvgPicture.asset(AppIcons.close)),
                      //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(154),),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
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
                    SizedBox(height: ScreenUtil().setHeight(44),),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppStrings.hobbiesText,style: AppTextStyle.text13,),
                          //SizedBox(width:ScreenUtil().setWidth(172) ,),
                          SvgPicture.asset(AppIcons.circle),
                          //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(54),),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppStrings.searchSettingsText,style: AppTextStyle.text13,),
                         // SizedBox(width:ScreenUtil().setWidth(172) ,),
                          SvgPicture.asset(AppIcons.circle),
                          //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(49),),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
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


                  ],
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(121),),
            Text(AppStrings.logoutText,style: AppTextStyle.logouttext,)


          ],
        ),
      ),
    );
  }
}
