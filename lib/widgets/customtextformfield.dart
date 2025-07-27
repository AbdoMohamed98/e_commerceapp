
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({super.key,this.customtextfieldcursorcolor, this.customtextfieldhinttext, this.customtextfieldhintcolor, this.textfieldborderradius,  this.textfieldbordercolor, this.textfieldfillcolor, this.suffixIcon, required String hintText, this.prefixIcon, this.onChanged,required this.validator, this.controller, this.obscureText});
       final Color? customtextfieldcursorcolor;
       final String? customtextfieldhinttext;
        final Color?  customtextfieldhintcolor;
        final double? textfieldborderradius;
        final Color? textfieldbordercolor;
        final Color? textfieldfillcolor;
        final Widget? suffixIcon;
         final Widget? prefixIcon;
         final void Function(String)? onChanged;
         final String? Function(String?)? validator;
          final TextEditingController? controller;
          final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField (
           validator: validator,
           controller: controller,
          onChanged: onChanged,
          autofocus: false,
            obscureText: obscureText ?? false,
          
          cursorColor:customtextfieldcursorcolor,
          decoration:InputDecoration(
            suffixIcon:suffixIcon ,
            fillColor: textfieldfillcolor ?? Color(0xffE8ECF4), // NEW
        filled: true,
        prefixIcon: prefixIcon,

            hintText:customtextfieldhinttext ,
            hintStyle: TextStyle(color: customtextfieldhintcolor  ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color:textfieldbordercolor ?? Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: textfieldbordercolor ?? Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(textfieldborderradius ?? 8.r))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textfieldbordercolor ?? Colors.transparent ),
              borderRadius: BorderRadius.all(Radius.circular(textfieldborderradius ?? 8.r))
            )
          ) ,
          
    );
  }
}