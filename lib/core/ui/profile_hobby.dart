import 'package:buddee_ui/core/ui/info.dart';
import 'package:buddee_ui/core/ui/my_profile_list.dart';

import 'package:buddee_ui/core/ui/profile_select_hobby.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/material_button.dart';
import '../widget/plain_material_button.dart';


class ProfileHobby extends StatefulWidget {
  const ProfileHobby({Key? key}) : super(key: key);

  @override
  State<ProfileHobby> createState() => _ProfileHobbyState();
}

class _ProfileHobbyState extends State<ProfileHobby> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: ScreenUtil().setHeight(43),),
            Padding(
              padding: const EdgeInsets.only(top: 35,bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                  IconButton(
                    onPressed: (){Get.back();},
                    icon: SvgPicture.asset(AppIcons.backarrow,
                      height: 15.86,
                      //ScreenUtil().setHeight(15.86),
                      width: 8.89,
                        //ScreenUtil().setWidth(8.89),
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 2),
              child: Center(child: Text(AppStrings.myHobbies,style: AppTextStyle.text8,textAlign: TextAlign.center,)),
            ),

            Center(child: Text('You have 1 hobby',style: AppTextStyle.text9,)),
            SizedBox(height: 24),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: 3,
              itemBuilder: (BuildContext context, int index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 9.0),
                          height: 32,
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
                          child:Row(
                            children: [
                              Expanded(
                                child: Text('Badminton',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                 style: AppTextStyle.text10,),
                              ),
                            ],
                          ),
                        ),

                       Row(children: [
                         InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.edit,
                           height:19),),
                         SizedBox(width: 13.5),
                         InkWell(onTap: (){}, child: SvgPicture.asset(AppIcons.delete,
                           height: 19)),
                       ],)
                      ],
                    ),
                  ),

                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 16 ),
                    child: Container(
                      height: 75,
                      child: Text('Intermediate level, looking for a partner to play weekdays after work. Committed but not too serious',
                        style: AppTextStyle.text6,),
                    ),
                  ),
                  SizedBox(height:40,),
                ],
              );
            },
           ),
           // SizedBox(height: ScreenUtil().setHeight(83),),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 14,top:83 ),
              child: PlainMaterialButtonBox(title: AppStrings.addnewhobbyText, onTap: (){
                Get.to(()=> ProfileSelectHobby());
              }),
            ),

            Padding(
              padding: const EdgeInsets.only(left:16.0,right: 14,top: 24,),
              child: MaterialButtonBox(title: AppStrings.saveText, onTap: (){
                Get.to(()=> MyProfileList() );
              }),
            ),
            SizedBox(height: 36,)


          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
