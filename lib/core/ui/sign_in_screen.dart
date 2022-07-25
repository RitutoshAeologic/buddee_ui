import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:buddee_ui/core/constants/icon_constants.dart';
import 'package:buddee_ui/core/ui/forgot_password.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
import 'package:buddee_ui/core/ui/sign_up_screen.dart';
import 'package:buddee_ui/core/widget/material_button.dart';
import 'package:buddee_ui/core/widget/text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../widget/get_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 32,),
          child: IconButton(
            onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.textblueColor,
              size: 18.r) ,
          )
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32,),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(17.07),),
              Center(
                child: Text(AppStrings.helloAgainText ,style: AppTextStyle.helloAgaintext ),
              ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              Center(
                child: Text(
                  AppStrings.singInAccountText,style:AppTextStyle.signInAccount ),
              ),
              SizedBox(height: ScreenUtil().setHeight(34),),
              Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GetTextField(hint: AppStrings.demoEmailText, obscure: false,),
              SizedBox(height: ScreenUtil().setHeight(21),),
              Text(AppStrings.passwordText,style:AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
              SizedBox(height: ScreenUtil().setHeight(11)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(ForgetPassword());
                    },
                    child:  Text(AppStrings.forgetPasswordText,
                      style: AppTextStyle.forgetyourpasswordtext
                    ),
                    )
              ],),
              SizedBox(height: ScreenUtil().setHeight(24),),
              MaterialButtonBox(title: AppStrings.signInTitleText, onTap: (){
                Get.to(SignUpAbout());
              }),
              SizedBox(height: ScreenUtil().setHeight(29),),
            //  Divider(thickness:2,color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppIcons.dot,
                  width: ScreenUtil().setWidth(122),
                  ),
                  Text(AppStrings.orWithText, style: AppTextStyle.text5),
                  SvgPicture.asset(AppIcons.dot,
                    width: ScreenUtil().setWidth(122),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(24),),
              TextButtonBox(title: AppStrings.googleSignInText, onTap: (){}, icon: AppIcons.googlepng),
              SizedBox(height: ScreenUtil().setHeight(16),),
              TextButtonBox(title: AppStrings.facebookSignInText, onTap: (){}, icon: AppIcons.fbpng),
              SizedBox(height: ScreenUtil().setHeight(32),),
              Row(
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
            ],
          ),
        ),
      ),
    );
  }
}
