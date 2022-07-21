import 'package:buddee_ui/core/ui/add_new_hobby.dart';
import 'package:buddee_ui/core/ui/onboard_screen.dart';
import 'package:buddee_ui/core/ui/sign_in_screen.dart';
import 'package:buddee_ui/core/ui/sign_up_about.dart';
import 'package:buddee_ui/core/ui/sign_up_screen.dart';
import 'package:buddee_ui/core/ui/save_hobbie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/ui/add_hobbies.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (_,a){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          home: //OnBoardScreen(),
          //SignInScreen(),
         //SignUpAbout(),
          AddHobbies()
          //SignUp(),
          //SaveHobbie(),
         // AddNewHobbie(),
        );
      },
    );
  }
}