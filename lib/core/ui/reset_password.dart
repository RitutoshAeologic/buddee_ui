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
              Center(child: SvgPicture.asset(AppIcons.resetpass,
                  height: ScreenUtil().setHeight(161),
               // width: ScreenUtil().setWidth(199),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(21),),
              Center(
                child: Text(AppStrings.resetpassText ,
                  style: AppTextStyle.helloAgaintext,
                  textAlign: TextAlign.center, ),
              ),
              SizedBox(height: ScreenUtil().setHeight(29),),
              Text(AppStrings.newpasswordText,style:AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GrayGetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
              SizedBox(height: ScreenUtil().setHeight(19),),
              Text(AppStrings.confirmpasswordText,style:AppTextStyle.text3 ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              GrayGetTextField(hint: AppStrings.confirmpasswordText , obscure: true,),

              SizedBox(height: ScreenUtil().setHeight(24),),
              MaterialButtonBox(title: AppStrings.submitText, onTap: (){
                Get.to(SignUpAbout());
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
    );;
  }
}
