import 'package:buddee_ui/core/ui/check_email.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
import 'package:buddee_ui/core/ui/sign_up_screen.dart';
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
import '../widget/material_button.dart';
import '../widget/text_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              SizedBox(height: ScreenUtil().setHeight(45),),
              Center(child: SvgPicture.asset(AppIcons.forgotpass,
            //  height: ScreenUtil().setHeight(202),
              width: ScreenUtil().setWidth(199),),
              ),
              SizedBox(height: ScreenUtil().setHeight(30),),
              Center(
                child: Text(AppStrings.forgetpassText ,
                  style: AppTextStyle.helloAgaintext,
                  textAlign: TextAlign.center, ),
              ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              Center(
                child: Text(
                    AppStrings.forgetpasssubtitleText,style:AppTextStyle.text11,
                textAlign: TextAlign.center,),
              ),
              SizedBox(height: ScreenUtil().setHeight(28),),
              Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GetTextField(hint: AppStrings.demoEmailText, obscure: false,),


              SizedBox(height: ScreenUtil().setHeight(24),),
              MaterialButtonBox(title: AppStrings.submitText, onTap: (){
                Get.to(CheckEmail());
              }),
              SizedBox(height: ScreenUtil().setHeight(42),),
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
