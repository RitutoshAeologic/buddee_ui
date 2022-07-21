import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class GrayGetTextField extends StatelessWidget {
  final String hint;
  final bool  obscure;
  const GrayGetTextField({Key? key, required this.hint, required this.obscure,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
          ),
          filled: true,
          fillColor: AppColors.white,
          hintText: hint,
          hintStyle: AppTextStyle.lightgreytext,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
        ),
        obscureText: obscure,
      );
  }
}