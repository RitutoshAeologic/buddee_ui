import 'package:buddee_ui/core/ui/sign_in_screen.dart';
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
import '../widget/gray_get_text_field.dart';
import '../widget/material_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
      //         onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,
      //         color: AppColors.textblueColor,size: 18,) ,
      //       )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  padding:  EdgeInsets.only(left: 10.06,top: 55.07),
                  onPressed: (){Get.back();},
                  icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrowsvg,height: 15.86,) ,
                ),
              ],
            ),
            SizedBox(height: 51.7),
            Center(child: SvgPicture.asset(AppIcons.resetpass,
                height: 161,
             // width: ScreenUtil().setWidth(199),
              ),
            ),
            SizedBox(height: 21),
            Center(
              child: Text(AppStrings.resetpassText ,
                style: AppTextStyle.helloAgaintext,
                textAlign: TextAlign.center, ),
            ),
            SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.newpasswordText,style:AppTextStyle.text3 ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GrayGetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
            ),
            SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.confirmpasswordText,style:AppTextStyle.text3 ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GrayGetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
            ),

            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.submitText, onTap: (){
                Get.to(SignInScreen());
              }),
            ),
            SizedBox(height:42),
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
                      Get.to(()=>SignUp());
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
