import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:buddee_ui/core/constants/icon_constants.dart';
import 'package:buddee_ui/core/ui/sign_in_screen.dart';
import 'package:buddee_ui/core/ui/sign_up_screen.dart';
import 'package:buddee_ui/core/widget/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: ScreenUtil().setHeight(410),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppIcons.onBoardbgjpg),
                fit: BoxFit.fill
              )
            ),
            child:
            Stack(
              children: [
                Positioned(
                    child:
    //                     Image.asset(AppIcons.buddeeLogoJpg,
    //                     width: ScreenUtil().setWidth(450),
    //                       height: ScreenUtil().setHeight(253),
    // ),
                SvgPicture.asset(AppIcons.buddeeLogo,
              // height: ScreenUtil().setHeight(450),
                width: ScreenUtil().setWidth(253),
                ),
                  bottom: 50,
                  left: 20,
                  right: 20,
                  //left:5
                  //right:5
                ),

              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(53),),
          Text(
            AppStrings.onBoardTitleText,
            style: AppTextStyle.text1,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: ScreenUtil().setHeight(29),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: MaterialButtonBox(title: AppStrings.createAccountText,
                onTap: (){Get.to(SignUp(),);}),
          ),
          SizedBox(height: ScreenUtil().setHeight(25),),
          GestureDetector(
            onTap: () {
              Get.to(SignInScreen());
            },
            child:  Text(AppStrings.signInTitleText,
              style: AppTextStyle.text2),
          ),
          //SizedBox(height: ScreenUtil().setHeight(25),),
        ],
      ),
    );
  }
}
