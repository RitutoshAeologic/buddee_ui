import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/material_button.dart';
import '../widget/plain_material_button.dart';

class AddedHobbies extends StatefulWidget {
  const AddedHobbies({Key? key}) : super(key: key);

  @override
  State<AddedHobbies> createState() => _AddedHobbiesState();
}

class _AddedHobbiesState extends State<AddedHobbies> {
  final List<String> temp = [];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 25.06,),
          child: Icon(Icons.arrow_back_ios,color: AppColors.black,),
        ),
        backgroundColor: AppColors.white,
      ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(28.07),),
            Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
            SizedBox(height: ScreenUtil().setHeight(36),),
            Center(child: Text('You have three hobbies',style: AppTextStyle.text9,)),
            SizedBox(height: ScreenUtil().setHeight(24),),

           GridView.builder(scrollDirection: Axis.vertical,
               shrinkWrap: true,
               itemCount: 3,
               //temp.length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: 10 / 2,
                   crossAxisSpacing: 10.0,
                   mainAxisSpacing: 14.0
               ),
               itemBuilder: (BuildContext context, int index){
             return Container(
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
                   IconButton(onPressed: (){
                     temp.removeAt(index);
                   }, icon: SvgPicture.asset(AppIcons.delete)),
                 ],
               ),
             );

               }),

            SizedBox(height: ScreenUtil().setHeight(15),),


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
            SizedBox(height: ScreenUtil().setHeight(220),),
            PlainMaterialButtonBox(title: AppStrings.addnewhobbyText, onTap: (){}),
            SizedBox(height: ScreenUtil().setHeight(24),),
            MaterialButtonBox(title: AppStrings.nextstepText, onTap: (){})

          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
