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

class SignUpview extends StatefulWidget {
  const SignUpview({super.key});

  @override
  State<SignUpview> createState() => _SignUpviewState();
}

class _SignUpviewState extends State<SignUpview> {
  bool _isPasswordVisible = false;
  String emailAddress = '';
  String password = '';
  String confirmPassword = '';
  bool isloading = false;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      color: Colors.black,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 355.w,

                      child: Text(
                        'Create an account',
                        style: Apptextstyle.headlines,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'let\'s create your account ',
                      style: Apptextstyle.subheadlines,
                    ),
                    SizedBox(height: 20),
                    Text('Fullname', style: Apptextstyle.bodytext),
                    SizedBox(height: 10),
                    Customtextformfield(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },

                      customtextfieldhinttext: 'Enter your full name',
                      onChanged: (value) {},
                      hintText: '',
                    ),
                    SizedBox(height: 20),
                    Text('username', style: Apptextstyle.bodytext),
                    SizedBox(height: 10),
                    Customtextformfield(
                      hintText: '',
                      customtextfieldhinttext: 'Enter your email address',

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }

                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          emailAddress = value;
                        });
                      },
                    ),

                    SizedBox(height: 20),
                    Text('password', style: Apptextstyle.bodytext),
                    SizedBox(height: 10),
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
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    Text('confirm password', style: Apptextstyle.bodytext),
                    SizedBox(height: 10),
                    Customtextformfield(
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != password) {
                          return 'Passwords do not match';
                        }

                        return null;
                      },
                      obscureText: !_isPasswordVisible,
                      hintText: '',
                      customtextfieldhinttext: 'Enter your password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      onChanged: (value) {
                        setState(() {
                          confirmPassword = value;
                        });
                      },
                    ),
                    SizedBox(height: 50),
                    Customelevatedbutton(
                      onpressed: () async {
                        if (formkey.currentState!.validate()) {
                          setState(() {
                            isloading = true;
                          });
                          try {
                            final credential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                  email: emailAddress,
                                  password: password,
                                );

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Login successful!')),
                            );
                            context.pushNamed(Approutes.homepageview);
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'No user found for that email.',
                                  ),
                                ),
                              );
                            } else if (e.code == 'invalid-email') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Invalid email address.'),
                                ),
                              );
                            } else if (e.code == 'user-disabled') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'User account has been disabled.',
                                  ),
                                ),
                              );
                            } else if (e.code == 'too-many-requests') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Too many requests. Try again later.',
                                  ),
                                ),
                              );
                            } else if (e.code == 'wrong-password') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Wrong password provided.'),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'An error occurred: ${e.message}',
                                  ),
                                ),
                              );
                            }
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Something went wrong: $e'),
                              ),
                            );
                          }
                        }
                        setState(() {
                          isloading = false;
                        });
                      },
                      buttontext: 'Sign in',
                      buttontextcolor: Color(0xffFFFFFF),
                      buttoncolor: Appcolors.appprimarycolor,
                      buttonhight: 50.h,
                      buttonwidth: 325.w,
                      buttonborderradius: 10.r,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have ane account',
                            style: Apptextstyle.subheadlines,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to sign-up view
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Login',
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
