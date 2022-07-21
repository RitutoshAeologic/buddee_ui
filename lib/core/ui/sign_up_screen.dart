import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,color: AppColors.black,),
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
          child:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenUtil().setHeight(10),),
                Center(
                  child: Text(AppStrings.helloText,style: AppTextStyle.helloAgaintext ),
                ),
                SizedBox(height: ScreenUtil().setHeight(10),),
                Center(
                  child: Text(
                      AppStrings.createYourAccountText,style:AppTextStyle.signInAccount ),
                ),
                SizedBox(height: ScreenUtil().setHeight(35),),
                Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
                SizedBox(height: ScreenUtil().setHeight(8),),
                GrayGetTextField(hint: AppStrings.demoEmailText, obscure: false,),
                SizedBox(height: ScreenUtil().setHeight(18),),
                Text(AppStrings.passwordText,style:AppTextStyle.text3 ),
                SizedBox(height: ScreenUtil().setHeight(8),),
                GrayGetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
                SizedBox(height: ScreenUtil().setHeight(18),),
                Text(AppStrings.confirmpasswordText,style:AppTextStyle.text3 ),
                SizedBox(height: ScreenUtil().setHeight(8),),
                GrayGetTextField(hint: AppStrings.confirmpasswordText , obscure: true,),
                SizedBox(height: ScreenUtil().setHeight(18)),
                MaterialButtonBox(title: AppStrings.signUpText, onTap: (){}),
                SizedBox(height: ScreenUtil().setHeight(20),),
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
                          'Sign up',
                          style: AppTextStyle.text7
                      ),
                      onPressed: () {
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
