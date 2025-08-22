import 'package:e_commerceapp2/core/appstyle/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customelevatedbutton extends StatelessWidget {
  const Customelevatedbutton({
    super.key,
    this.onpressed,
    this.buttontext,
    this.buttontextcolor,
    this.buttoncolor, 
    this.buttonhight,
    this.buttonwidth,
    this.buttonborderradius, this.icon,
  });

  final void Function()? onpressed;
  final String? buttontext;
  final Color? buttontextcolor;
  final Color? buttoncolor; 
  final double? buttonhight;
  final double? buttonwidth;
  final double? buttonborderradius;
  final IconData? icon;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttoncolor ?? Appcolors.appprimarycolor, 
        fixedSize: Size(
          buttonwidth ?? 331.w,
          buttonhight ?? 56.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            buttonborderradius ?? 8.r,
          ),
        ),
      ),
      child: Row(
    mainAxisSize: MainAxisSize.min, // keeps button compact
    children:[
      Text(
        buttontext ?? '',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: buttontextcolor ?? Colors.white),
      ),
      SizedBox(width: 8), 
       if (icon != null) ...[
            const SizedBox(width: 8),
            Icon(icon, size: 18, color: buttontextcolor ?? Colors.white),
          ],
    ],
  ),
      
    );
  }
}