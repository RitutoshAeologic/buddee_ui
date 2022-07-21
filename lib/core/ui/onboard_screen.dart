import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:buddee_ui/core/constants/icon_constants.dart';
import 'package:buddee_ui/core/widget/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
            height: ScreenUtil().setHeight(430),
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
                SvgPicture.asset(AppIcons.buddeeLogo,
              //  height: ScreenUtil().setHeight(100),
                  width: ScreenUtil().setWidth(270),
                ),
                  bottom: 40,
                  left: 50
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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: MaterialButtonBox(title: AppStrings.createAccountText,
                onTap: (){}),
          ),
          SizedBox(height: ScreenUtil().setHeight(25),),
          GestureDetector(
            onTap: () {
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
