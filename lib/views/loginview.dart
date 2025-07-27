import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/core/appstyle/colors.dart';
import 'package:e_commerceapp2/core/navigation/approutes.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:e_commerceapp2/widgets/customtextformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  bool _isPasswordVisible = false;

  String emailAddress = '';
  String password = '';
  bool isloading = false;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      color: Colors.black,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 355.w,
      
                      child: Text(
                        'Login to your account',
                        style: Apptextstyle.headlines,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'It\'s great to see you again.',
                      style: Apptextstyle.subheadlines,
                    ),
                    const SizedBox(height: 20),
                    Text('Username', style: Apptextstyle.bodytext),
                    const SizedBox(height: 10),
                    Customtextformfield(
                      
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },

      
                      customtextfieldhinttext: 'Enter your email address',
                      onChanged: (value) {
                        emailAddress = value;
                      },
                      hintText: '',
                    ),
                    const SizedBox(height: 20),
                    Text('Password', style: Apptextstyle.bodytext),
                    const SizedBox(height: 10),
                 Customtextformfield(
  controller: passwordController,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  },
  hintText: '',
  customtextfieldhinttext: 'Enter your password',
  obscureText: !_isPasswordVisible,
  suffixIcon: IconButton(
    icon: Icon(
      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
      color: Colors.grey,
    ),
    onPressed: () {
      setState(() {
        _isPasswordVisible = !_isPasswordVisible;
      });
    },
  ),
  onChanged: (value) {
    password = value;
  },
),

                    const SizedBox(height: 50),
         Customelevatedbutton(
        onpressed: () async {
      if (formkey.currentState!.validate()) {
        setState(() {
          isloading = true;
        });
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
            email: emailAddress,
            password: password,
          );
          print( credential.user?.email);
      
          
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login successful!')),
          );
          context.pushNamed(Approutes.homepageview);
          emailController.clear();
          passwordController.clear();
      
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('No user found for that email.')),
            );
          } else if (e.code == 'invalid-email') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Invalid email address.')),
            );
          } else if (e.code == 'user-disabled') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('User account has been disabled.')),
            );
          } else if (e.code == 'too-many-requests') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Too many requests. Try again later.')),
            );
          } else if (e.code == 'wrong-password') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Wrong password provided.')),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('An error occurred: ${e.message}')),
            );
          }
        } catch (e) {
          
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Something went wrong: $e')),
          );
        }

        setState(() {
          isloading = false;
        });

      }
        },
        buttontext: 'Sign in',
        buttontextcolor: const Color(0xffFFFFFF),
        buttoncolor: Appcolors.appprimarycolor,
        buttonhight: 50.h,
        buttonwidth: 325.w,
        buttonborderradius: 10.r,
      ),
      
                    Padding(
                      padding: EdgeInsets.only(top: 363.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: Apptextstyle.subheadlines,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to sign-up view
                              context.pushNamed(Approutes.signUpview);
                            },
                            child: Text(
                              'Join',
                              style: Apptextstyle.bodytext.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
