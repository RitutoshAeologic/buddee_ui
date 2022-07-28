import 'package:buddee_ui/core/constants/icon_constants.dart';
import 'package:buddee_ui/core/widget/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/hobbies_strings.dart';

class SaveHobbie extends StatefulWidget {
  const SaveHobbie({Key? key}) : super(key: key);

  @override
  State<SaveHobbie> createState() => _SaveHobbieState();
}

class _SaveHobbieState extends State<SaveHobbie> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      //appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //     padding:  EdgeInsets.only(left: 25.06,),
      //     child: Icon(Icons.arrow_back_ios,color: AppColors.backarrow,size: 18.r),
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding:  EdgeInsets.only(left: 10.06,top: 55.07),
              onPressed: (){Get.back();},
              icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrow,height: 15.86,) ,
            ),
            SizedBox(height: 28),
            Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
            SizedBox(height: 29),
            Text(AppStrings.searchText,style: AppTextStyle.lightbluetext ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                filled: true,
                fillColor: AppColors.white,
                hintText: AppStrings.searchTitle,
                hintStyle: AppTextStyle.lightgreytext,
                prefixIcon: Icon(Icons.search,color: AppColors.lightgreyTextColor,),
                contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
              ),
            ),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                        height:32,
                        width: 152,
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
                        child:Padding(
                          padding: const EdgeInsets.only(left: 9,top:9),
                          child: Text('Badminton', style: AppTextStyle.text10,),
                        ),
                      ),
                IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.delete))
              ],
            ),
            SizedBox(height: 32),
            Text(AppStrings.lookingText,style: AppTextStyle.lightbluetext,),
      SizedBox(height: 8),
      Container(
        height: 114,
        width: 343,
        child: TextField(
          maxLines: 10,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
            ),
            filled: true,
            fillColor: AppColors.white,
            hintText: 'Hobbies Description',
            hintStyle: AppTextStyle.text3,
            contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
          ),
        ),
      ),

            SizedBox(height: 161),
            MaterialButtonBox(title: AppStrings.saveText, onTap: (){}),
            SizedBox(height: 34,)
          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
