import 'package:buddee_ui/core/constants/hobbies_strings.dart';
import 'package:buddee_ui/core/ui/add_new_hobby.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';





class AddHobbies extends StatefulWidget {
  const AddHobbies({Key? key}) : super(key: key);

  @override
  State<AddHobbies> createState() => _AddHobbiesState();
}

class _AddHobbiesState extends State<AddHobbies> {
  final List<String> temp = [];
  bool isSelected = false;
  int tappedIndex = 0;
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
            onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.backarrow,size: 18.r) ,
          )
        ),
        backgroundColor: AppColors.white,
      ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(31.07),),
            Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
            SizedBox(height: ScreenUtil().setHeight(21),),
            Text(AppStrings.searchText,style: AppTextStyle.text3 ),
            SizedBox(height: ScreenUtil().setHeight(8),),
            TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.textFieldColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
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
            SizedBox(height: ScreenUtil().setHeight(30),),
            Expanded(
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
                       // height: ScreenUtil().setHeight(50),
                        padding: EdgeInsets.only(top: 5),
                       // decoration: BoxDecoration(
                           // borderRadius: BorderRadius.all(
                           //   Radius.circular(15.0),
                          //  ),
                            // border: Border.all(
                            //   color: AppColors.textblueColor,
                            //   width: 1.5,
                            // )
                       // ),
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
                          Get.to(AddNewHobbie());
                        });
                       // temp.add(myHobbies[index]);
                      },
                      selectedColor: AppColors.genderbg2Color,
                    );
                    // Container(
                    //   height: ScreenUtil().setHeight(50),
                    //   padding: EdgeInsets.all(6),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.all(
                    //         Radius.circular(8.0),
                    //       ),
                    //       border: Border.all(
                    //         color: AppColors.textblueColor,
                    //         width: 1.5,
                    //       )
                    //   ),
                    //   width: MediaQuery.of(context).size.width,
                    //   child:
                    //   ChoiceChip(
                    //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    //     backgroundColor: AppColors.white,
                    //     label:
                    //     Text(myHobbies[index],textAlign: TextAlign.start ,),
                    //     padding: const EdgeInsets.only(bottom: 5.0),
                    //     selected: isSelected,
                    //     onSelected: (newBoolvalue){
                    //       isSelected = newBoolvalue;
                    //       setState(() {
                    //         isSelected = newBoolvalue;
                    //       });
                    //       //Do whatever you want when the chip is selected
                    //     },
                    //      selectedColor: AppColors.genderbg2Color,
                    //   ),
                    // );

                  //   InkWell(
                  //   onTap: (){ temp.add(myHobbies[index]);
                  //     print('${temp.length.toString()}');
                  //     },
                  //   child:
                  //   Container(
                  //       height: ScreenUtil().setHeight(50),
                  //       padding: EdgeInsets.all(6),
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(8.0),
                  //           ),
                  //           border: Border.all(
                  //             color: AppColors.textblueColor,
                  //             width: 1.5,
                  //           )
                  //       ),
                  //       width: MediaQuery.of(context).size.width,
                  //       child: ChoiceChip(
                  //         backgroundColor: AppColors.white,
                  //         label: Padding(
                  //           padding: const EdgeInsets.only(bottom: 5.0),
                  //           child: Text(myHobbies[index],textAlign: TextAlign.start ,),
                  //         ),
                  //         selected: isSelected,
                  //         onSelected: (bool value){
                  //           isSelected = value;
                  //           setState(() {
                  //
                  //           });
                  //           //Do whatever you want when the chip is selected
                  //         },
                  //         // selectedColor:AppColors.materialGradient2,
                  //       ),
                  //   ),
                  // ) ;
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Container(
                  //       height: ScreenUtil().setHeight(50),
                  //       width: ScreenUtil().setWidth(150),
                  //       decoration: BoxDecoration(
                  //           gradient: LinearGradient(
                  //             colors: [
                  //               AppColors.genderbg1Color,
                  //               AppColors.genderbg2Color,
                  //             ],
                  //           ),
                  //           borderRadius: const BorderRadius.all(
                  //             Radius.circular(10.0),
                  //           ),
                  //
                  //       ),
                  //       child: TextButton.icon(
                  //         label: Text(AppStrings.maleText,
                  //         style: AppTextStyle.genderText,),
                  //         onPressed: (){},
                  //         icon: SvgPicture.asset(AppIcons.male),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: ScreenUtil().setHeight(50),
                  //       width: ScreenUtil().setWidth(150),
                  //       decoration: BoxDecoration(
                  //         // gradient: LinearGradient(
                  //         //   colors: [
                  //         //     AppColors.genderbg1Color,
                  //         //     AppColors.genderbg2Color,
                  //         //   ],
                  //         // ),
                  //         borderRadius: const BorderRadius.all(
                  //           Radius.circular(10.0),
                  //         ),
                  //
                  //       ),
                  //       child:
                  //       TextButton.icon(
                  //         label: Text(AppStrings.femaleText,
                  //           style: AppTextStyle.genderText,),
                  //         onPressed: (){},
                  //         icon: SvgPicture.asset(AppIcons.female),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // ),;
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
