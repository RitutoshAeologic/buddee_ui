import 'package:buddee_ui/core/ui/added_hobby_list.dart';
import 'package:buddee_ui/core/widget/plain_material_button.dart';
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
      // appBar:
      // AppBar(
      //   elevation: 0,
      //   leading: Padding(
      //     padding:  EdgeInsets.only(left: 25.06,),
      //     child: IconButton(
      //       onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.backarrow,size: 18.r) ,
      //     )
      //   ),
      //   backgroundColor: AppColors.white,
      // ),
      body:
      SingleChildScrollView(
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
            SizedBox(height:36),
            Center(child: Text('You have 1 hobby',style: AppTextStyle.text9,)),
            SizedBox(height: 24),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1,
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
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, ),
                  child: Container(
                    height: 144,
                    child: Text('Intermediate level, looking for a partner to play weekdays after work. Committed but not too serious',
                      style: AppTextStyle.text6,),
                  ),
                ),

              ],
            );
          },
        ),
            SizedBox(height: 146),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:32.5,),
              child: PlainMaterialButtonBox(title: AppStrings.addnewhobbyText, onTap: (){}),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.5),
              child: MaterialButtonBox(title: AppStrings.nextstepText, onTap: (){
                Get.to(()=>AddedHobbies());
              }),

            ),
            SizedBox(height: 34,)

          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
