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
import 'my_profile_list.dart';

class ProfileExplore extends StatelessWidget {
  const ProfileExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Container(
              height: MediaQuery.of(context).size.height*0.518,
              //ScreenUtil().setHeight(498),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 35,right: 35),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppIcons.explorebg),
                      fit: BoxFit.fill
                  )
              ),
              child:
              Stack(
                children: [

                  Positioned(
                    child:
                    Image.asset(
                      AppIcons.cloudjpg,
                      height: 148,),
                    //  SvgPicture.asset(AppIcons.buddeeLogo,
                    //  height: MediaQuery.of(context).size.height*0.313,
                    // //width: MediaQuery.of(context).size.width*0.375
                    //    //ScreenUtil().setWidth(253),
                    //  ),
                    top: 60,
                    left: 30,
                    right: 30,
                    //left:5
                    //right:5
                  ),
                  Positioned(
                    child:
                    Image.asset(
                      AppIcons.premiumjpg,
                      height: 253,),
                    //  SvgPicture.asset(AppIcons.buddeeLogo,
                    //  height: MediaQuery.of(context).size.height*0.313,
                    // //width: MediaQuery.of(context).size.width*0.375
                    //    //ScreenUtil().setWidth(253),
                    //  ),

                    left: 20,
                    right: 20,
                    //left:5
                    //right:5
                  ),

                ],
              ),
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
