import 'dart:ui';

import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyle {
  static TextStyle text1 =  const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      fontFamily: 'PoppinsR',
      color: AppColors.Onboardsubtitle,
    fontStyle: FontStyle.normal
  );

  static TextStyle materialwidget = const TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      fontSize: 20,
      fontFamily: 'PoppinsR',
    fontStyle: FontStyle.normal
  );
  //
  static TextStyle text2 = const TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.signInColor,
      fontSize: 20,
      fontFamily: 'PoppinsR');

  static TextStyle helloAgaintext = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.textblueColor,
  );

 static TextStyle forgetyourpasswordtext = const  TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 12,
  decoration: TextDecoration.underline,
   color: AppColors.greyTextColor
  );

  static TextStyle signInAccount = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    color: AppColors.lightgreyTextColor,

  );


  static TextStyle text3 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
  );
  static TextStyle lightbluetext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
      color: AppColors.textblueColor
  );

  static TextStyle lightgreytext = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: AppColors.lightgreyTextColor
  );

  static TextStyle text4 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      decoration: TextDecoration.underline,
      fontFamily: 'Poppins'
  );

  static TextStyle text5 = const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      fontFamily: 'Poppins',
    color: AppColors.orwithtextColor
  );

  static TextStyle text6 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins'
  );

  static TextStyle text7 = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    color: AppColors.signuptextColor,
    decoration: TextDecoration.underline
  );
  static TextStyle maniPhototext = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.mainphototextColor
  );

  static TextStyle deletetext = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.deletetextColor
  );

  static TextStyle text8 = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins'
  );
  static TextStyle text10 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'PoppinsR',
    color: AppColors.textblueColor
  );
  static TextStyle blueboldtext = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.textblueColor
  );

  static TextStyle genderText = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    color: AppColors.black
  );
  static TextStyle text9 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      color: AppColors.textblueColor
  );
  static TextStyle plainmaterialtext = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'PoppinsR',
      color: AppColors.signInColor
  );
}