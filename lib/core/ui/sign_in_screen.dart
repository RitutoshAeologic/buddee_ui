import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:buddee_ui/core/constants/icon_constants.dart';
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
            onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.black,) ,
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
              SizedBox(height: ScreenUtil().setHeight(10),),
              Center(
                child: Text(AppStrings.helloAgainText ,style: AppTextStyle.helloAgaintext ),
              ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              Center(
                child: Text(
                  AppStrings.singInAccountText,style:AppTextStyle.signInAccount ),
              ),
              SizedBox(height: ScreenUtil().setHeight(28),),
              Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GetTextField(hint: AppStrings.demoEmailText, obscure: false,),
              SizedBox(height: ScreenUtil().setHeight(18),),
              Text(AppStrings.passwordText,style:AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
              SizedBox(height: ScreenUtil().setHeight(12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "myRoute");
                    },
                    child:  Text(AppStrings.forgetPasswordText,
                      style: AppTextStyle.forgetyourpasswordtext
                    ),
                    )
              ],),
              SizedBox(height: ScreenUtil().setHeight(20),),
              MaterialButtonBox(title: AppStrings.signInTitleText, onTap: (){
                Get.to(SignUpAbout());
              }),
              SizedBox(height: ScreenUtil().setHeight(24),),
            //  Divider(thickness:2,color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppIcons.dot,
                  height: ScreenUtil().setWidth(2),
                  ),
                  Text(AppStrings.orWithText, style: AppTextStyle.text5),
                  SvgPicture.asset(AppIcons.dot,
                    height: ScreenUtil().setWidth(2),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20),),
              TextButtonBox(title: AppStrings.googleSignInText, onTap: (){}, icon: AppIcons.google),
              SizedBox(height: ScreenUtil().setHeight(12),),
              TextButtonBox(title: AppStrings.facebookSignInText, onTap: (){}, icon: AppIcons.fb),
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
