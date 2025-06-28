import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/core/appstyle/colors.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:e_commerceapp2/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpview extends StatelessWidget {
  const SignUpview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
            left: 16.0,
            right: 16.0,
         
          ),
          child: SingleChildScrollView(
            padding:  EdgeInsets.all(16.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 355.w,
                  
                  child: Text('Create an account', style: Apptextstyle.headlines,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  )),
                 SizedBox(height: 5),
                Text('let\'s create your account ', style: Apptextstyle.subheadlines),
                 SizedBox(height: 20),
                Text('Fullname', style: Apptextstyle.bodytext),
                 SizedBox(height: 10),
                Customtextfield(
                  
                  customtextfieldhinttext: 'Enter your full name',
                  onChanged: (value) {}, hintText: '',
                ),
                 SizedBox(height: 20),
                Text('username', style: Apptextstyle.bodytext),
                 SizedBox(height: 10),
                Customtextfield(
                  hintText: '',
                  customtextfieldhinttext: 'Enter your email address',
                  suffixIcon: const Icon(Icons.visibility_off),
                  onChanged: (value) {},
                ),
               
                
                SizedBox(height: 20),
                Text('password', style: Apptextstyle.bodytext),
                 SizedBox(height: 10),
                Customtextfield(
                  hintText: '',
                  customtextfieldhinttext: 'Enter your password',
                  suffixIcon: const Icon(Icons.visibility_off),
                  onChanged: (value) {},
                ),
                SizedBox(height: 20),
                Text('confirm password', style: Apptextstyle.bodytext),
                 SizedBox(height: 10),
                Customtextfield(
                  hintText: '',
                  customtextfieldhinttext: 'Enter your password',
                  suffixIcon: const Icon(Icons.visibility_off),
                  onChanged: (value) {},
                ),
                SizedBox(height: 50),
                Customelevatedbutton(
                  onpressed: () {
                    // Handle login action
                  },
                  buttontext: 'Sign in',
                  buttontextcolor:  Color(0xffFFFFFF),
                  buttoncolor: Appcolors.appprimarycolor,
                  buttonhight: 50.h,
                  buttonwidth: 325.w,
                  buttonborderradius: 10.r,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}