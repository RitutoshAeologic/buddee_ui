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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: ScreenUtil().setHeight(45),),
              Center(child: SvgPicture.asset(AppIcons.checkemail,
                //  height: ScreenUtil().setHeight(202),
                width: ScreenUtil().setWidth(199),),
              ),
              SizedBox(height: ScreenUtil().setHeight(30),),
              Center(
                child: Text(AppStrings.checkemailText ,
                  style: AppTextStyle.helloAgaintext,
                  textAlign: TextAlign.center, ),
              ),
              SizedBox(height: ScreenUtil().setHeight(8),),
              Center(
                child: Text(
                  AppStrings.checkemailsubtitleText,style:AppTextStyle.text11,
                  textAlign: TextAlign.center,),
              ),
              SizedBox(height: ScreenUtil().setHeight(57),),
              //SizedBox(height: ScreenUtil().setHeight(24),),
              MaterialButtonBox(title: AppStrings.openemailText, onTap: (){
                //Get.to(SignUpAbout());
              }),
              SizedBox(height: ScreenUtil().setHeight(49),),
              Text(AppStrings.skipconfirmText,style: AppTextStyle.text2,),
              SizedBox(height: ScreenUtil().setHeight(45),),
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
