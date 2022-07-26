import 'package:buddee_ui/core/ui/add_new_hobby.dart';
import 'package:buddee_ui/core/ui/forgot_password.dart';
import 'package:buddee_ui/core/ui/main_profile.dart';
import 'package:buddee_ui/core/ui/onboard_screen.dart';
import 'package:buddee_ui/core/ui/reset_password.dart';
import 'package:buddee_ui/core/ui/sign_in_screen.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
import 'package:buddee_ui/core/ui/sign_up_screen.dart';
import 'package:buddee_ui/core/ui/save_hobbie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/ui/add_hobbies.dart';
import 'core/ui/add_photo.dart';
import 'core/ui/added_hobby_list.dart';
import 'core/ui/check_email.dart';
import 'core/ui/edit_add_photo.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_,a){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: MainProfile()
          //ResetPassword()
          //CheckEmail(),
         // ForgetPassword()
          // OnBoardScreen(),
         // SignInScreen(),
        //SignUpAbout(),
          //AddHobbies(),
          //SignUp(),
          //SaveHobbie(),
         //AddNewHobbie(),
          // AddedHobbies()
         // EditAddPhoto()
        );
      },
    );
  }
}