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
import '../widget/plain_material_button.dart';

class EditAddPhoto extends StatefulWidget {
  const EditAddPhoto({Key? key}) : super(key: key);

  @override
  State<EditAddPhoto> createState() => _EditAddPhotoState();
}

class _EditAddPhotoState extends State<EditAddPhoto> {
  final List<String> temp = [];
  int tappedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 25.06,),
          child: IconButton(
            onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.backarrow,size: 18.r) ,
          )
        ),
        backgroundColor: AppColors.white,
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(28.07),),
              Center(child: Text(AppStrings.addphotoText,style: AppTextStyle.blueboldtext )),
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
                      InkWell(
                        onTap: (){
                          setState(() {
                            tappedIndex = index;
                          });
                        },
                        child:
                        Stack(
                          children: [
                            Container(

                             //width: ScreenUtil().setWidth(109),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: AppColors.photobgColor,
                                border: Border.all(
                                  color: tappedIndex == index ?
                                  Colors.orange : Colors.transparent
                                )
                              ),
                              //   child:
                              // Image.asset(AppIcons.onBoardbgjpg,
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            Positioned(
                             // bottom: 0,
                                //right: 0,
                                top: 108,
                                left: 68,
                                child:
                                IconButton(onPressed: () {  }, icon: Icon(Icons.add_circle,color: AppColors.greyTextColor,),

                                )
                            )
                          ],

                        ),
                      );
                  }
              ),

              SizedBox(height: ScreenUtil().setHeight(96),),

            Center(child: Text(AppStrings.editphotoText,style: AppTextStyle.text12,)),

              SizedBox(height: ScreenUtil().setHeight(24),),




            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.mainphoto,

                    ),),
                    Text(AppStrings.mainphotoText,style: AppTextStyle.maniPhototext,)
                  ],
                ),
                SizedBox(width: ScreenUtil().setWidth(57),),
                Column(
                  children: [
                    IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.removebutton,
                    ),),
                    Text(AppStrings.deleteText,style:AppTextStyle.deletetext ,)
                  ],
                ),
              ],
            )

            ],
          ),
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
