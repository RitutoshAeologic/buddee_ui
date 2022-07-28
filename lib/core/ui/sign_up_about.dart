
import 'package:buddee_ui/core/ui/select_hobbies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../constants/colors.dart';
import '../constants/font_constants.dart';
import '../constants/font_style.dart';
import '../constants/icon_constants.dart';
import '../widget/get_text_field.dart';
import '../widget/material_button.dart';
import '../widget/plain_material_button.dart';




class SignUpAbout extends StatefulWidget {
  const SignUpAbout({Key? key}) : super(key: key);

  @override
  State<SignUpAbout> createState() => _SignUpAboutState();
}

class _SignUpAboutState extends State<SignUpAbout> {

  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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
        //       onPressed: (){Get.back();},icon:Icon(Icons.arrow_back_ios,color: AppColors.backarrow,
        //         size: 18.r) ,
        //     )
        //   ),
        //   backgroundColor: AppColors.white,
        // ),
        ///Bottom Navigation Bar
    //     bottomNavigationBar: BottomNavigationBar(
    //     backgroundColor: AppColors.white,
    //     type: BottomNavigationBarType.fixed,
    //     //onTap: (),
    //     //selectedItemColor: Colors.white,
    //    // unselectedItemColor: Colors.orangeAccent.shade100,
    //     showSelectedLabels: true,
    //     showUnselectedLabels: false,
    //     items: [
    //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.navi),label: ""),
    // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.like),label: ""),
    // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.comment),label: ""),
    // BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.user),label: ""),
    // ],),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding:  EdgeInsets.only(left: 10.06,top: 55.07),
              onPressed: (){Get.back();},
              icon: SvgPicture.asset(AppIcons.backarrow,color: AppColors.backarrow,height: 15.86,) ,
            ),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(child: Text(AppStrings.tellUsText,style: AppTextStyle.text8,textAlign: TextAlign.center,)),
            ),
            SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.nameText,style: AppTextStyle.text3 ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child:  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: AppStrings.nameText,
                  hintStyle: AppTextStyle.text3,

                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
                ),
                obscureText: false,
              ),
            ),
            SizedBox(height:21),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.dobText,style:AppTextStyle.text3 ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child:
              TextField(
                controller: dateinput,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 2),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.lightgreyTextColor, width: 1),
                  ),
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: AppStrings.dobText,
                  hintStyle: AppTextStyle.text3,
                  suffixIcon: IconButton(
                    alignment: Alignment.center,
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime.now()
                      );

                      if(pickedDate != null ){
                        print(pickedDate);
                        ///pickedDate output format => 10-03-2022 00:00:00.000
                        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                        print(formattedDate);


                        setState(() {
                          dateinput.text = formattedDate; //set output date to TextField value.
                        });
                      }else{
                        print("Date is not selected");
                      }
                    },
                    icon:
                      SvgPicture.asset(AppIcons.calendar,)
                    // Icon(
                    //   Icons.calendar_today_outlined,
                    // //  size: 16,
                    // ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 14),
                ),
                obscureText: false,
              ),
            ),
            SizedBox(height: 21,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(AppStrings.genderText, style: AppTextStyle.text3, ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                  height: 60,
                  //MediaQuery.of(context).size.height*0.090,
                  //ScreenUtil().setHeight(60),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: AppColors.lightgreyTextColor,
                        width: 2,
                      )
                  ),
                  width: MediaQuery.of(context).size.width,
                  child:
                  Center(
                    child: ToggleSwitch(
                      minHeight: MediaQuery.of(context).size.height*0.080,
                      //ScreenUtil().setHeight(50),
                      minWidth: MediaQuery.of(context).size.width*0.39,
                      //ScreenUtil().setWidth(143),
                      cornerRadius: (10),
                      radiusStyle: true,
                      fontSize: 16,
                      iconSize: 30,
                      customTextStyles: [
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        ),
                        TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PoppinsR',
                            color: AppColors.textblueColor
                        )
                      ],
                      activeBgColors: [[AppColors.genderbg1Color],[AppColors.genderbg2Color]],
                      activeFgColor: AppColors.black,
                      inactiveBgColor: AppColors.white,
                      totalSwitches: 2,

                      labels: [AppStrings.maleText,AppStrings.femaleText],
                      /// todo check svg error
                      icons: [Icons.male,Icons.female],
                      onToggle: (index){},
                    ),
                  )
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
              ),
            ),
            /// Check Height issue,over
            SizedBox(height: 175),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: MaterialButtonBox(title: AppStrings.nextText, onTap: (){
                Get.to(SelectHobby());
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
