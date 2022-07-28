import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
          ),          filled: true,
          fillColor: AppColors.white,
          hintText: hint,
          hintStyle: AppTextStyle.lightgreytext,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
        ),
        obscureText: obscure,
      );
  }
}