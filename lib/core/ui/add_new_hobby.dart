import 'package:buddee_ui/core/ui/added_hobby_list.dart';
import 'package:buddee_ui/core/widget/plain_material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/material_button.dart';

class AddNewHobbie extends StatefulWidget {
  const AddNewHobbie({Key? key}) : super(key: key);

  @override
  State<AddNewHobbie> createState() => _AddNewHobbieState();
}

class _AddNewHobbieState extends State<AddNewHobbie> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar:
      AppBar(
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 25.06,),
          child: IconButton(
            onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.black,) ,
          )
        ),
        backgroundColor: AppColors.white,
      ),
      body:
      Padding(
        padding: EdgeInsets.only(left: 16,right: 18
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(28),),
              Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
              SizedBox(height: ScreenUtil().setHeight(36),),
              Center(child: Text('You have 1 hobby',style: AppTextStyle.text9,)),
              SizedBox(height: ScreenUtil().setHeight(24),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(32),
                    width: ScreenUtil().setWidth(152),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.genderbg1Color,
                          AppColors.genderbg2Color,
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),

                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 9.0),
                          child: Text('Badminton', style: AppTextStyle.text10,),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(88),),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.edit)),
                  IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.delete)),
                ],
              ),

              SizedBox(height: ScreenUtil().setHeight(15),),
              Text('Intermediate level, looking for a partner to \n'
                  'play weekdays after work. Committed but \n'
                  'not too serious',
              style: AppTextStyle.text6,),
              // Container(
              //   height: ScreenUtil().setHeight(114),
              //   width: ScreenUtil().setWidth(343),
              //   child: TextField(
              //     maxLines: 10,
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12.r),
              //         borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12.r),
              //         borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
              //       ),
              //       filled: true,
              //       fillColor: AppColors.white,
              //       hintText: 'Hobbies Description',
              //       hintStyle: AppTextStyle.text3,
              //       contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
              //     ),
              //   ),
              // ),
              SizedBox(height: ScreenUtil().setHeight(210),),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 14),
                child: PlainMaterialButtonBox(title: AppStrings.addnewhobbyText, onTap: (){}),
              ),
              SizedBox(height: ScreenUtil().setHeight(15),),
              Padding(
                padding: const EdgeInsets.only(left:16.0,right: 14),
                child: MaterialButtonBox(title: AppStrings.nextstepText, onTap: (){
                  Get.to(AddedHobbies());
                }),
              )

            ],
          ),
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
