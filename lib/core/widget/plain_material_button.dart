import 'package:buddee_ui/core/constants/colors.dart';
import 'package:buddee_ui/core/constants/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlainMaterialButtonBox extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const PlainMaterialButtonBox({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MaterialButton(
           color: AppColors.white,
            onPressed: onTap,
            height: 58,
            minWidth: MediaQuery.of(context).size.width,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
            side: BorderSide(color: AppColors.signInColor,width: 2)
            ),
            child:
            Text(title,
                textAlign: TextAlign.center,
                style: AppTextStyle.plainmaterialtext
            )
      );
  }
}