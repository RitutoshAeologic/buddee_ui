import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/material_button.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //       padding:  EdgeInsets.only(left: 25.06,),
      //       child: IconButton(
      //         onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.backarrow,
      //           size: 18.r) ,
      //       )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      ///Bottom Navigation Bar
      //     bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: AppColors.white,
      //     type: BottomNavigationBarType.fixed,
      //     //onTap: (),
      //       selectedItemColor: AppColors.materialGradient2,
      //     showSelectedLabels: false,
      //    showUnselectedLabels: false,
      //     items: [
      //      // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.like),label: ""),
      // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.navi),label: ""),
      //       BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.like),label: ""),
      // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.comment),label: ""),
      // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.user),label: ""),
      // ],),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:  EdgeInsets.only(left: 10.0,top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                   IconButton(
                     onPressed: (){Get.back();},
                     icon: SvgPicture.asset(AppIcons.backarrow,
                        height: 15.86,
                        width: 8.89,

                        color: AppColors.backarrowsvg,
                      ),
                   ),
                //  SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25.0,top: 26),
              child: Center(child: Text(AppStrings.infoText,style: AppTextStyle.text8,textAlign: TextAlign.center,)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 29,bottom: 8),
              child: Text(AppStrings.nameText,style: AppTextStyle.text3 ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child:  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: AppStrings.nameText,
                  hintStyle: AppTextStyle.text3,

                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                ),
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 21,bottom: 8),
              child: Text(AppStrings.dobText,style:AppTextStyle.text3 ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child:
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: AppStrings.dobText,
                  hintStyle: AppTextStyle.text3,

                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
                ),
                obscureText: false,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32,top: 21,bottom: 8),
              child: Text(AppStrings.genderText, style: AppTextStyle.text3, ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                  height: 60,
                  //MediaQuery.of(context).size.height*0.090,
                  //ScreenUtil().setHeight(60),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: AppColors.lightgreyTextColor,
                        width: 2,
                      )
                  ),
                  width: MediaQuery.of(context).size.width,
                  child:
                  Center(
                    child: ToggleSwitch(
                     minHeight: MediaQuery.of(context).size.height*0.080,
                      //ScreenUtil().setHeight(50),
                      minWidth: MediaQuery.of(context).size.width*0.39,
                      //ScreenUtil().setWidth(143),
                      cornerRadius: (10),
                      radiusStyle: true,
                      fontSize: 16.sp,
                      iconSize: 30.r,
                      customTextStyles: [
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        ),
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        )
                      ],
                      activeBgColors: [[AppColors.genderbg1Color],[AppColors.genderbg2Color]],
                      activeFgColor: AppColors.black,
                      inactiveBgColor: AppColors.white,
                      totalSwitches: 2,

                      labels: [AppStrings.maleText,AppStrings.femaleText],
                      /// todo check svg error
                      icons: [Icons.male,Icons.female],
                      onToggle: (index){},
                    ),
                  )
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       height: ScreenUtil().setHeight(50),
                //       width: ScreenUtil().setWidth(150),
                //       decoration: BoxDecoration(
                //           gradient: LinearGradient(
                //             colors: [
                //               AppColors.genderbg1Color,
                //               AppColors.genderbg2Color,
                //             ],
                //           ),
                //           borderRadius: const BorderRadius.all(
                //             Radius.circular(10.0),
                //           ),
                //
                //       ),
                //       child: TextButton.icon(
                //         label: Text(AppStrings.maleText,
                //         style: AppTextStyle.genderText,),
                //         onPressed: (){},
                //         icon: SvgPicture.asset(AppIcons.male),
                //       ),
                //     ),
                //     Container(
                //       height: ScreenUtil().setHeight(50),
                //       width: ScreenUtil().setWidth(150),
                //       decoration: BoxDecoration(
                //         // gradient: LinearGradient(
                //         //   colors: [
                //         //     AppColors.genderbg1Color,
                //         //     AppColors.genderbg2Color,
                //         //   ],
                //         // ),
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(10.0),
                //         ),
                //
                //       ),
                //       child:
                //       TextButton.icon(
                //         label: Text(AppStrings.femaleText,
                //           style: AppTextStyle.genderText,),
                //         onPressed: (){},
                //         icon: SvgPicture.asset(AppIcons.female),
                //       ),
                //     )
                //   ],
                // ),
              ),
            ),
            /// Check Height issue,over
            //SizedBox(height: ScreenUtil().setHeight(175)),
            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 175,bottom: 36),
              child: MaterialButtonBox(title: AppStrings.saveText, onTap: (){
              }),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
