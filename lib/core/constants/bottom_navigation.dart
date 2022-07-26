import 'package:buddee_ui/core/ui/comment_screen.dart';
import 'package:buddee_ui/core/ui/explore_Screen.dart';
import 'package:buddee_ui/core/ui/like_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ui/info.dart';
import 'colors.dart';
import 'icon_constants.dart';

class BottomNavigatior extends StatefulWidget {
  const BottomNavigatior({Key? key}) : super(key: key);

  @override
  State<BottomNavigatior> createState() => _BottomNavigatiorState();
}

class _BottomNavigatiorState extends State<BottomNavigatior> {
  int selectedIndex = 0;
  static List screen = [
    ExploreScreen(),
    LikeScreen(),
    CommentScreen(),
    InfoScreen(),
  //  UserScreen(),
    //  ExploreScreen(),
   // CommentScreen(),
  ];

  void onTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.navi),label: "",
          activeIcon:SvgPicture.asset(AppIcons.navi,color: AppColors.materialGradient1,) ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.like),label: "",
          activeIcon:SvgPicture.asset(AppIcons.like,color: AppColors.materialGradient1,) ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.comment),label: "",
              activeIcon: SvgPicture.asset(AppIcons.comment,color: AppColors.materialGradient1,)),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.user),label: "",
              activeIcon: SvgPicture.asset(AppIcons.user,color: AppColors.materialGradient1,)),
        ],),
    );
  }
}
