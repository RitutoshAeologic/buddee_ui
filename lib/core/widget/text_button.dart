import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';

class TextButtonBox extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final String icon;
  const TextButtonBox({Key? key, required this.title, required this.onTap, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: onTap,
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(color: AppColors.black)),
          backgroundColor: MaterialStateProperty.all(AppColors.white),
          foregroundColor: MaterialStateProperty.all(AppColors.black),
          minimumSize:  MaterialStateProperty.all(Size(double.infinity, 58)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0))),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h),
          ),
          textStyle: MaterialStateProperty.all(AppTextStyle.text6)
      ),

      child:Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon,
            height: ScreenUtil().setWidth(2),),
          SizedBox(width: 10.w,),
          Text(title),
        ],
      ) ,
    );
  }
}
