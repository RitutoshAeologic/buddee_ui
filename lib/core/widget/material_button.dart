import 'package:buddee_ui/core/constants/colors.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialButtonBox extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const MaterialButtonBox({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: ScreenUtil().setHeight(54),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.materialGradient1,
              AppColors.materialGradient1,
              AppColors.materialGradient2,
            ],
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
            boxShadow: [
              BoxShadow(
                color: AppColors.materialshadowColor,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0,1),
              )
            ]
        ),
        child: MaterialButton(
         // color: Colors.deepOrangeAccent,
          onPressed: onTap,
         // height: ScreenUtil().setHeight(48),
          minWidth: MediaQuery.of(context).size.width,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
          child:
              Text(title,
               // textAlign: TextAlign.center,
                style: AppTextStyle.materialwidget
              )
        ),
      );
  }
}