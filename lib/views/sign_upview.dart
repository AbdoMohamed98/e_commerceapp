import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/core/appstyle/colors.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:e_commerceapp2/widgets/customtextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpview extends StatefulWidget {
  const SignUpview({super.key});

  @override
  State<SignUpview> createState() => _SignUpviewState();
}

class _SignUpviewState extends State<SignUpview> {
  String emailAddress = '';
  String password = '';
  GlobalKey formkey = GlobalKey<FormState>();
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
            child: Form(
              key: formkey,
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
                    onChanged: (value) {
                      setState(() {
                        emailAddress = value;
                      });
                    },
                  ),
                 
                  
                  SizedBox(height: 20),
                  Text('password', style: Apptextstyle.bodytext),
                   SizedBox(height: 10),
                  Customtextfield(
                    hintText: '',
                    customtextfieldhinttext: 'Enter your password',
                    suffixIcon: const Icon(Icons.visibility_off),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text('confirm password', style: Apptextstyle.bodytext),
                   SizedBox(height: 10),
                  Customtextfield(
                    hintText: '',
                    customtextfieldhinttext: 'Enter your password',
                    suffixIcon: const Icon(Icons.visibility_off),
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),
                  SizedBox(height: 50),
                  Customelevatedbutton(
                    onpressed: () async {
                      if ((formkey.currentState as FormState).validate()) {
                      
                      try {
                final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: emailAddress,
                  password: password
                );
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                SnackBar(content: Text('No user found for that email.'));
                } else if (e.code == 'invalid-email') {
                  SnackBar(content: Text('Invalid email address.'));
                } else if (e.code == 'user-disabled') {
                  SnackBar(content: Text('User account has been disabled.'));
                } else if (e.code == 'too-many-requests') {
                  SnackBar(content: Text('Too many requests. Please try again later.'));
                } else if (e.code == 'wrong-password') {
                  SnackBar(content: Text('Wrong password provided for that user.'));
                } else {
                  SnackBar(content: Text('An unknown error occurred.'));
                }
              }
                       }   },
                    buttontext: 'Sign in',
                    buttontextcolor:  Color(0xffFFFFFF),
                    buttoncolor: Appcolors.appprimarycolor,
                    buttonhight: 50.h,
                    buttonwidth: 325.w,
                    buttonborderradius: 10.r,
                  ),
                   Padding(
                    padding:  EdgeInsets.only(top: 150.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have ane account', style: Apptextstyle.subheadlines),
                        GestureDetector(
                          onTap: () {
                            // Navigate to sign-up view
                            Navigator.pop(context);
                          },
                          child: Text('Login',style: Apptextstyle.bodytext.copyWith(
                            decoration: TextDecoration.underline,
                          )),
                        )
                      ],
                    ),
                  ),
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}