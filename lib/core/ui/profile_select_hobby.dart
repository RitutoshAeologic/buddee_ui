import 'package:buddee_ui/core/ui/profile_edit_hobby.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/hobbies_strings.dart';
import '../constants/icon_constants.dart';

class ProfileSelectHobby extends StatefulWidget {
  const ProfileSelectHobby({Key? key}) : super(key: key);

  @override
  State<ProfileSelectHobby> createState() => _ProfileSelectHobbyState();
}

class _ProfileSelectHobbyState extends State<ProfileSelectHobby> {
  final List<String> temp = [];
  bool isSelected = false;
  int tappedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //       padding:  EdgeInsets.only(left: 25.06,),
      //       child: IconButton(
      //         onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.backarrow,size: 18.r) ,
      //       )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35,bottom: 18,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                IconButton(
                  onPressed: (){Get.back();},
                  icon: SvgPicture.asset(AppIcons.backarrow,
                    height: 15.86,
                    width: 8.89,

                    color: AppColors.backarrowsvg,
                  ),
                ),
                //SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(AppStrings.myprofileText,style: AppTextStyle.text13,),
                ),
              ],
            ),
          ),

          Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),

          Padding(
            padding: const EdgeInsets.only(left: 32.0,right: 32,top:21,bottom: 8 ),
            child: Text(AppStrings.searchText,style: AppTextStyle.text3 ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
                ),
                filled: true,
                fillColor: AppColors.white,
                hintText: AppStrings.searchTitle,
                hintStyle: AppTextStyle.lightgreytext,
                prefixIcon: Icon(Icons.search,color: AppColors.lightgreyTextColor,),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
              ),
            ),
          ),
          SizedBox(height: 32),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: myHobbies.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 14.0,
                  mainAxisExtent: 35,
                ),
                itemBuilder: (BuildContext context, int index){
                  return

                    ChoiceChip(
                      shape:
                      RoundedRectangleBorder(side: BorderSide(color: AppColors.textblueColor ),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: AppColors.white,
                      label:
                      Container(

                        padding: EdgeInsets.only(top: 5),

                        width: MediaQuery.of(context).size.width,
                        child:
                        Text(myHobbies[index],textAlign: TextAlign.start ,style: AppTextStyle.text10,),

                      ),
                      padding: const EdgeInsets.only(bottom: 5.0),
                      selected: isSelected, //&& myHobbies[index] == ,
                      onSelected: (newBoolvalue){
                        isSelected = newBoolvalue;
                        setState(() {
                          // myHobbies[index]=i;
                          isSelected = newBoolvalue;
                          tappedIndex = index;
                          temp.add(myHobbies[index]);
                          Get.to(()=>ProfileEditHobby());

                        });
                        // temp.add(myHobbies[index]);
                      },
                      selectedColor: AppColors.genderbg2Color,
                    );

                },
              ),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.white,
    );
  }
}
