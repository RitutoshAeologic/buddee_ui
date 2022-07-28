import 'package:buddee_ui/core/ui/add_photo.dart';
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
            SizedBox(height:28.07),
            Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
            SizedBox(height: 36),
            Center(child: Text('You have three hobbies',style: AppTextStyle.text9,)),
            SizedBox(height: 24),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 32.0),
             child: GridView.builder(scrollDirection: Axis.vertical,
                 shrinkWrap: true,
                 itemCount: 3,
                 //temp.length,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     childAspectRatio: 10 / 2,
                     crossAxisSpacing: 10.0,
                     mainAxisSpacing: 14.0,
                   mainAxisExtent: 35,
                 ),
                 itemBuilder: (BuildContext context, int index){
               return
                 Container(
                // height: ScreenUtil().setHeight(32),
                // width: ScreenUtil().setWidth(152),
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
                       padding: const EdgeInsets.only(top: 4.0,right: 6.0,left: 9,bottom: 4),
                       child: Row(
                         children: [
                           Text('Badminton', style: AppTextStyle.text10,),
                         ],
                       ),
                     ),
                     Row(
                       children: [
                         IconButton(onPressed: (){
                           temp.removeAt(index);
                         }, icon: SvgPicture.asset(AppIcons.delete,
                         height: 20,
                         width: 20,color: AppColors.textblueColor,
                         fit: BoxFit.fitWidth,),
                         ),
                       ],
                     ),
                   ],
                 ),
               );

                 }),
           ),
            SizedBox(height: 258),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: PlainMaterialButtonBox(title: AppStrings.addnewhobbyText, onTap: (){}),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.nextstepText, onTap: (){
                Get.to(AddPhoto());
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
