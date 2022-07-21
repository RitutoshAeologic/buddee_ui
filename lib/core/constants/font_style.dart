import 'dart:ui';

import 'package:buddee_ui/core/constants/font_constants.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyle {
  static TextStyle text1 =  const TextStyle(

      fontStyle: FontStyle.normal,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      fontFamily: 'PoppinosR'

  );

  static TextStyle materialwidget = const TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      fontSize: 20,
      fontFamily: 'PoppinosR');
  //
  static TextStyle text2 = const TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.signInColor,
      fontSize: 20,
      fontFamily: 'PoppinosR');

  static TextStyle helloAgaintext = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR',
      color: AppColors.textblueColor
  );

  static TextStyle signInAccount = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: 'PoppinosR',
    color: AppColors.lightgreyTextColor
  );


  static TextStyle text3 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'PoppinosR',
  );
  static TextStyle lightbluetext = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'PoppinosR',
      color: AppColors.textblueColor
  );

  static TextStyle lightgreytext = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'PoppinosR',
      color: AppColors.lightgreyTextColor
  );

  static TextStyle text4 = const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      decoration: TextDecoration.underline,
      fontFamily: 'PoppinosR'
  );

  static TextStyle text5 = const TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 12,
      fontFamily: 'PoppinosR'
  );

  static TextStyle text6 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR'
  );

  static TextStyle text7 = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR'
  );

  static TextStyle text8 = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR'
  );
  static TextStyle text10 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'PoppinosR',
    color: AppColors.textblueColor
  );
  static TextStyle blueboldtext = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR',
      color: AppColors.textblueColor
  );

  static TextStyle genderText = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR',
    color: AppColors.black
  );
  static TextStyle text9 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'PoppinosR',
      color: AppColors.textblueColor
  );
  static TextStyle plainmaterialtext = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: 'PoppinosR',
      color: AppColors.signInColor
  );
}