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

class ProfilePrivacy extends StatefulWidget {
  const ProfilePrivacy({Key? key}) : super(key: key);

  @override
  State<ProfilePrivacy> createState() => _ProfilePrivacyState();
}

class _ProfilePrivacyState extends State<ProfilePrivacy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenUtil().setHeight(43),),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(width:ScreenUtil().setWidth(18.06) ,),
                  InkWell(
                    onTap: (){Get.back();},
                    child: SvgPicture.asset(AppIcons.backarrow,
                      height: ScreenUtil().setHeight(15.86),
                      width: ScreenUtil().setWidth(8.89),
                      color: AppColors.backarrowsvg,
                    ),
                  ),
                  SizedBox(width:ScreenUtil().setWidth(30.06) ,),
                  Text(AppStrings.privacyPolicyText,style: AppTextStyle.text13,),
                ],
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(33),),

           Container(
             margin: EdgeInsets.only(left: 18,right: 16),
             width: ScreenUtil().setWidth(341),
             child: Text('Effective: October 1, 2021 \n\n(View previous versions: 4/19/21, 6/12/20)\n\n'
                'Our Privacy Policy explains how Buddlee collects, uses, and discloses information about you. '
                 'The terms “Buddlee,” “we,” “us,” and “our” include Buddlee LLC and our affiliates. '
                 'We use the terms “member,” “you,” and “your” to mean any person using our Platform or attending related events,'
                 ' including any organization or person using the Platform on an organization’s behalf.'
                 ' This Privacy Policy applies to the processing of information about members and other individuals that '
                 'we collect when you use our “Platform,” which means any website, application, or services we offer, or when you communicate with us.'
                 ' For information about choices you may have under this policy, please see “Your Choices” below.\n\n'
                 'This Privacy Policy does not apply to the information that you may provide to third parties, such as members, '
                 'and others with whom you may share information about yourself. sources...',style: AppTextStyle.text6,),
           )


          ],
        ),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
