import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/get_text_field.dart';
import '../widget/material_button.dart';
import '../widget/plain_material_button.dart';




class SignUpAbout extends StatefulWidget {
  const SignUpAbout({Key? key}) : super(key: key);

  @override
  State<SignUpAbout> createState() => _SignUpAboutState();
}

class _SignUpAboutState extends State<SignUpAbout> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios,color: AppColors.black,),
          backgroundColor: AppColors.white,
        ),
        ///Bottom Navigation Bar
    //     bottomNavigationBar: BottomNavigationBar(
    //     backgroundColor: AppColors.white,
    //     type: BottomNavigationBarType.fixed,
    //     //onTap: (),
    //     //selectedItemColor: Colors.white,
    //    // unselectedItemColor: Colors.orangeAccent.shade100,
    //     showSelectedLabels: true,
    //     showUnselectedLabels: false,
    //     items: [
    //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.navi),label: ""),
    // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.like),label: ""),
    // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.comment),label: ""),
    // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.user),label: ""),
    // ],),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,
            vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(15),),
            Center(child: Text(AppStrings.tellUsText,style: AppTextStyle.text8)),
            SizedBox(height: ScreenUtil().setHeight(40),),
            Text(AppStrings.nameText,style: AppTextStyle.text3 ),
            SizedBox(height: ScreenUtil().setHeight(10),),
            GetTextField(hint: AppStrings.nameText, obscure: false,),
            SizedBox(height: ScreenUtil().setHeight(25),),
            Text(AppStrings.dobText,style:AppTextStyle.text3 ),
            SizedBox(height: ScreenUtil().setHeight(10),),
            GetTextField(hint: AppStrings.dobText , obscure: false,),
            SizedBox(height: ScreenUtil().setHeight(25),),
            Text(AppStrings.genderText, style: AppTextStyle.text3, ),
            SizedBox(height: ScreenUtil().setHeight(10),),
            Container(
              height: ScreenUtil().setHeight(60),
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
                ToggleSwitch(
                  minHeight: ScreenUtil().setHeight(50),
                  minWidth: ScreenUtil().setWidth(150),
                  cornerRadius: (10),
                  radiusStyle: true,
                  fontSize: 16.sp,
                  iconSize: 25.r,
                  activeBgColors: [[AppColors.genderbg1Color],[AppColors.genderbg2Color]],
                  activeFgColor: AppColors.black,
                  inactiveBgColor: AppColors.white,
                  totalSwitches: 2,
                  labels: [AppStrings.maleText,AppStrings.femaleText],
                  /// todo check svg error
                  icons: [Icons.male,Icons.female],
                  onToggle: (index){},
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
            /// Check Height issue,over
            SizedBox(height: MediaQuery.of(context).size.width*0.4,),
            PlainMaterialButtonBox(title: AppStrings.nextText, onTap: (){}),
          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
