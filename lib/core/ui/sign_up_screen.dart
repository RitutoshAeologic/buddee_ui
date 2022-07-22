import 'package:buddee_ui/core/ui/sign_in_screen.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
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
import '../widget/get_text_field.dart';
import '../widget/gray_get_text_field.dart';
import '../widget/material_button.dart';
import '../widget/text_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 25.06,),
          child:
          IconButton(
            onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.black,) ,
          )
        ),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
          child:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: AppColors.black,)),
                //   ],
                // ),
                SizedBox(height: ScreenUtil().setHeight(24),),
                Center(
                  child: Text(AppStrings.helloText,style: AppTextStyle.helloAgaintext ),
                ),
                SizedBox(height: ScreenUtil().setHeight(20),),
                Center(
                  child: Text(
                      AppStrings.createYourAccountText,style:AppTextStyle.signInAccount ),
                ),
                SizedBox(height: ScreenUtil().setHeight(39),),
                Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
                SizedBox(height: ScreenUtil().setHeight(8),),
                GrayGetTextField(hint: AppStrings.demoEmailText, obscure: false,),
                SizedBox(height: ScreenUtil().setHeight(21),),
                Text(AppStrings.passwordText,style:AppTextStyle.text3 ),
                SizedBox(height: ScreenUtil().setHeight(8),),
                GrayGetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
                SizedBox(height: ScreenUtil().setHeight(21),),
                Text(AppStrings.confirmpasswordText,style:AppTextStyle.text3 ),
                SizedBox(height: ScreenUtil().setHeight(8),),
                GrayGetTextField(hint: AppStrings.confirmpasswordText , obscure: true,),
                SizedBox(height: ScreenUtil().setHeight(24)),
                MaterialButtonBox(title: AppStrings.signUpText, onTap: (){
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
                SizedBox(height: ScreenUtil().setHeight(24),),
                TextButtonBox(title: AppStrings.googleSignInText, onTap: (){}, icon: AppIcons.google),
                SizedBox(height: ScreenUtil().setHeight(16),),
                TextButtonBox(title: AppStrings.facebookSignInText, onTap: (){}, icon: AppIcons.fb),
                Row(
                  children: <Widget>[
                    Text(AppStrings.dontAccountText,
                        style:
                        AppTextStyle.text4
                    ),
                    TextButton(
                      child:  Text(
                          'Sign in',
                          style: AppTextStyle.text7
                      ),
                      onPressed: () {
                        Get.to(SignInScreen(),);
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          )
      ),
    );
  }
}
