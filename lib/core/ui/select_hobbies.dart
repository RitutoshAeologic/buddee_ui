import 'package:buddee_ui/core/constants/hobbies_strings.dart';
import 'package:buddee_ui/core/ui/add_new_hobby.dart';
import 'package:buddee_ui/core/ui/edit_hobbies_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';





class SelectHobby extends StatefulWidget {
  const SelectHobby({Key? key}) : super(key: key);

  @override
  State<SelectHobby> createState() => _SelectHobbyState();
}

class _SelectHobbyState extends State<SelectHobby> {
  final List<String> temp = [];
  bool isSelected = false;
  int tappedIndex = 0;
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            padding:  EdgeInsets.only(left: 10.06,top: 52.07),
            onPressed: (){Get.back();},
            icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrowsvg,height: 15.86,) ,
          ),
          SizedBox(height: 31.07),
          Center(child: Text(AppStrings.addHobbies,style: AppTextStyle.blueboldtext )),
          SizedBox(height: 21),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(AppStrings.searchText,style: AppTextStyle.text3 ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: TextField(
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
          ),
          SizedBox(height: 30),
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
                        Text(myHobbies[index],textAlign: TextAlign.start ,style: AppTextStyle.text10,
                       overflow: TextOverflow.ellipsis, ),

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
                          Get.to(()=>EditHobbyDetails());
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
