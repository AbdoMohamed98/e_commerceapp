import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/core/appstyle/colors.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:e_commerceapp2/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
         
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 355.w,
                  
                  child: Text('Login to your account', style: Apptextstyle.headlines,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  )),
                const SizedBox(height: 5),
                Text('it\'s great to see you again', style: Apptextstyle.subheadlines),
                const SizedBox(height: 20),
                Text('username', style: Apptextstyle.bodytext),
                const SizedBox(height: 10),
                Customtextfield(
                  
                  customtextfieldhinttext: 'Enter your email address',
                  onChanged: (value) {}, hintText: '',
                ),
                const SizedBox(height: 20),
                Text('password', style: Apptextstyle.bodytext),
                const SizedBox(height: 10),
                Customtextfield(
                  hintText: '',
                  customtextfieldhinttext: 'Enter your password',
                  suffixIcon: const Icon(Icons.visibility_off),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 50),
                Customelevatedbutton(
                  onpressed: () {
                    // Handle login action
                  },
                  buttontext: 'Sign in',
                  buttontextcolor: const Color(0xffFFFFFF),
                  buttoncolor: Appcolors.appprimarycolor,
                  buttonhight: 50.h,
                  buttonwidth: 325.w,
                  buttonborderradius: 10.r,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
