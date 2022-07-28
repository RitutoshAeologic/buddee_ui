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
      // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //     padding:  EdgeInsets.only(left: 32,),
      //     child: IconButton(
      //       onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.textblueColor,
      //         size: 18.r) ,
      //     )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding:  EdgeInsets.only(left: 10.06,top: 55.07),
              onPressed: (){Get.back();},
              icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrowsvg,
                height: 15.86,
              width: 8.89,) ,
            ),
            SizedBox(height: 17.07),
            Center(
              child: Text(AppStrings.helloAgainText ,style: AppTextStyle.helloAgaintext ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                AppStrings.singInAccountText,style:AppTextStyle.signInAccount ),
            ),
            SizedBox(height: 34),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.emailAddressText,style: AppTextStyle.text3 ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GetTextField(hint: AppStrings.demoEmailText, obscure: false,),
            ),
            SizedBox(height: 21,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.passwordText,style:AppTextStyle.text3 ),
            ),
            SizedBox(height:8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GetTextField(hint: AppStrings.enterPasswordText , obscure: true,),
            ),
            SizedBox(height:11),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
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
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.signInTitleText, onTap: (){
                Get.to(SignUpAbout());
              }),
            ),
            SizedBox(height: 29),
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
            ),
          ],
        ),
      ),
    );
  }
}
