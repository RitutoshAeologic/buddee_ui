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

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  final List<String> temp = [];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
            Center(child: Text(AppStrings.addphotosText,style: AppTextStyle.blueboldtext )),
            SizedBox(height: ScreenUtil().setHeight(42),),


            GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                //temp.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 144
                ),
                itemBuilder: (context , index){
                  return
                    Stack(
                      children: [
                        Container(

                          //height: ScreenUtil().setHeight(140),
                          //width: ScreenUtil().setWidth(109),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.photobgColor,

                          ),
                       //   child:
                          // Image.asset(AppIcons.onBoardbgjpg,
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        Positioned(
                            top: 108,
                            left: 68,
                            child:
                        IconButton(onPressed: () {  }, icon: Icon(Icons.add_circle,color: AppColors.greyTextColor,),
                          
                        )
                        )
                      ],

                    );
                }
            ),

            SizedBox(height: ScreenUtil().setHeight(174),),


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

            MaterialButtonBox(title: AppStrings.saveText, onTap: (){})

          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}