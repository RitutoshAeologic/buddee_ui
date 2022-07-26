import 'package:buddee_ui/core/widget/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';

class ProfileSearch extends StatefulWidget {
  const ProfileSearch({Key? key}) : super(key: key);

  @override
  State<ProfileSearch> createState() => _ProfileSearchState();
}

class _ProfileSearchState extends State<ProfileSearch> {
  RangeValues _currentAgeRangeValues = const RangeValues(0, 50);
  double _currentDistanceSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(43),),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                  InkWell(
                    onTap: (){Get.back();},
                    child: SvgPicture.asset(AppIcons.backarrow,
                      height: ScreenUtil().setHeight(15.86),
                      width: ScreenUtil().setWidth(8.89),
                      color: AppColors.backarrowsvg,
                    ),
                  ),
                  SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                  Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(26),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(child: Text(AppStrings.searchSettingsText,style: AppTextStyle.text8,textAlign: TextAlign.center,)),
            ),
            SizedBox(height: ScreenUtil().setHeight(21.58),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: ScreenUtil().setHeight(116),
              width: ScreenUtil().setWidth(325),
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1,color: AppColors.lightgreyTextColor)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.0),
                    child: Text(AppStrings.genderText,style:AppTextStyle.text9
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(16),),
                  Expanded(
                    child: ToggleSwitch(
                      initialLabelIndex: 0,
                      totalSwitches: 3,
                      minHeight: ScreenUtil().setHeight(48),
                      minWidth: ScreenUtil().setWidth(96),
                      cornerRadius: (12),
                      radiusStyle: true,
                      customTextStyles: [
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        ),
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        ),
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        ),
                      ],
                      activeBgColors: [[AppColors.genderbg1Color],[AppColors.genderbg2Color]],
                      activeFgColor: AppColors.black,
                      inactiveBgColor: AppColors.white,


                      labels: [AppStrings.maleText,AppStrings.femaleText,AppStrings.bothText],
                      /// todo check svg error
                      // icons: [Icons.male,Icons.female],
                      onToggle: (index  ){},
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(24),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: ScreenUtil().setHeight(174),
              width: ScreenUtil().setWidth(325),
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1,color: AppColors.lightgreyTextColor)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppStrings.distanceText,style:AppTextStyle.text9
                            ),
                            Text('${_currentDistanceSliderValue.toInt()}km',style: AppTextStyle.text3,)

                          ],
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: ScreenUtil().setHeight(16),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Row(children: [
                          Text('Max',style: AppTextStyle.text6,),
                          SizedBox(width: ScreenUtil().setWidth(8),),
                          Container(
                            height: ScreenUtil().setHeight(48),
                            width: ScreenUtil().setWidth(94),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(width: 1,color: AppColors.lightgreyTextColor),
                            ),
                            child: Center(child: Text('${_currentDistanceSliderValue.toInt()}',
                              style: AppTextStyle.blacktext,)),
                          )
                        ],),
                      ],
                    ),
                  ),
                 // SizedBox(height: ScreenUtil().setHeight(2),),
                  Column(
                    children: [
                      SliderTheme(
                        data: SliderThemeData(),
                        child: Slider(
                            value: _currentDistanceSliderValue,
                            max: 100,
                           activeColor: AppColors.signUpTextColor,
                           inactiveColor: AppColors.lightgreyTextColor,
                           thumbColor: AppColors.white,
                           // divisions: 5,
                            label: _currentDistanceSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentDistanceSliderValue = value;
                              });}
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: ScreenUtil().setHeight(24),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: ScreenUtil().setHeight(174),
              width: ScreenUtil().setWidth(325),
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1,color: AppColors.lightgreyTextColor)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppStrings.ageText,style:AppTextStyle.text9
                            ),
                            Text('${_currentAgeRangeValues.start.toInt()} - ${_currentAgeRangeValues.end.toInt()}',
                            style: AppTextStyle.agerangetext,)
                          ],
                        ),
                      ],
                    ),
                  ),
                 // SizedBox(height: ScreenUtil().setHeight(16),),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                              Text('From',style: AppTextStyle.text6,),
                              SizedBox(width: ScreenUtil().setWidth(8),),
                              Container(
                                height: ScreenUtil().setHeight(48),
                                width: ScreenUtil().setWidth(94),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(width: 1,color: AppColors.lightgreyTextColor),
                                ),
                                child: Center(child: Text('${_currentAgeRangeValues.start.toInt()}',
                                  style: AppTextStyle.blacktext,)),
                              ),
                            ],
                          ),
                          //SizedBox(width: ScreenUtil().setWidth(23),),
                          Row(
                            children: [
                              Text('To',style: AppTextStyle.text6,),
                              SizedBox(width: ScreenUtil().setWidth(8),),
                              Container(
                                height: ScreenUtil().setHeight(48),
                                width: ScreenUtil().setWidth(94),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(width: 1,color: AppColors.lightgreyTextColor),
                                ),
                                child: Center(child: Text('${_currentAgeRangeValues.end.toInt()}',
                                  style: AppTextStyle.blacktext,)),
                              ),
                            ],
                          ),
                        ],),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      RangeSlider(
                        values: _currentAgeRangeValues,
                        max: 100,
                      activeColor: AppColors.signUpTextColor,
                      inactiveColor: AppColors.lightgreyTextColor,
                      //  divisions: 5,
                        labels: RangeLabels(
                          _currentAgeRangeValues.start.round().toString(),
                          _currentAgeRangeValues.end.round().toString(),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentAgeRangeValues = values;
                          });
                        },
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(24),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.applyText, onTap: (){}),
            )
          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
