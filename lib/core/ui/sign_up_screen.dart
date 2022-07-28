import 'package:buddee_ui/core/ui/sign_in_screen.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
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
      // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading:
      //   Padding(
      //     padding:  EdgeInsets.only(left: 17.06,),
      //     child:
      //     IconButton(
      //       onPressed: (){Get.back();},
      //       icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrow,height: 15.86,) ,
      //     )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body: SingleChildScrollView(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding:  EdgeInsets.only(left: 10.06,top: 55.07),
                onPressed: (){Get.back();},
                icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrow,height: 15.86,) ,
              ),
              SizedBox(height: 34),
              Center(
                child: Text(AppStrings.helloText,style: AppTextStyle.helloAgaintext ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                    AppStrings.createYourAccountText,style:AppTextStyle.signInAccount ),
              ),
              SizedBox(height:39),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: GrayGetTextField(hint: AppStrings.demoEmailText, obscure: false,),
              ),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(AppStrings.passwordText,style:AppTextStyle.text3 ),
              ),
              SizedBox(height:8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: GrayGetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
              ),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(AppStrings.confirmpasswordText,style:AppTextStyle.text3 ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: GrayGetTextField(hint: AppStrings.confirmpasswordText , obscure: true,),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: MaterialButtonBox(title: AppStrings.signUpText, onTap: (){
                  Get.to(SignUpAbout());
                }),
              ),
              SizedBox(height:24),
              //  Divider(thickness:2,color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(AppIcons.dot,
                      width: 120,
                    ),
                    Text(AppStrings.orWithText, style: AppTextStyle.text5),
                    SvgPicture.asset(AppIcons.dot,
                      width: 120,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextButtonBox(title: AppStrings.googleSignInText, onTap: (){}, icon: AppIcons.googlepng),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: TextButtonBox(title: AppStrings.facebookSignInText, onTap: (){}, icon: AppIcons.fbpng),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Text(AppStrings.doHaveAccountText,
                          style:
                          AppTextStyle.dohaveaccount
                      ),
                      TextButton(
                        child:  Text(
                        AppStrings.lcsignInText,
                            style: AppTextStyle.text7
                        ),
                        onPressed: () {
                          Get.to(() => SignInScreen(),);
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
              ),
              SizedBox(height: 40,),
            ],
          )
      ),
    );
  }
}
