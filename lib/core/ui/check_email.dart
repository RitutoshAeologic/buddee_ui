import 'package:buddee_ui/core/ui/reset_password.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
import 'package:buddee_ui/core/ui/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/get_text_field.dart';
import '../widget/material_button.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //       padding:  EdgeInsets.only(left: 32,),
      //       child: IconButton(
      //         onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.textblueColor,
      //       size: 18,) ,
      //       )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  padding:  EdgeInsets.only(left: 10.06,top: 55.07),
                  onPressed: (){Get.back();},
                  icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrow,height: 15.86,) ,
                ),
              ],
            ),
            SizedBox(height: 45),
            Center(child: SvgPicture.asset(AppIcons.checkemail,
              //  height: ScreenUtil().setHeight(202),
              width: 199),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(AppStrings.checkemailText ,
                style: AppTextStyle.helloAgaintext,
                textAlign: TextAlign.center, ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Center(
                child: Text(
                  AppStrings.checkemailsubtitleText,style:AppTextStyle.text11,
                  textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 57),
            //SizedBox(height: ScreenUtil().setHeight(24),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.openemailText, onTap: (){
                Get.to(ResetPassword());
              }),
            ),
            SizedBox(height: 49),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.skipconfirmText,style: AppTextStyle.text2,),
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                children: <Widget>[
                  Text(AppStrings.dontAccountText,
                      style:
                      AppTextStyle.text4
                  ),
                  TextButton(
                    child:  Text(
                      AppStrings.lcsignUpText,
                      style: AppTextStyle.text7,
                    ),
                    onPressed: () {
                      Get.to(SignUp());
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
