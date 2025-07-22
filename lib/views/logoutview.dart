import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logoutview extends StatefulWidget {
  const Logoutview({super.key});

  @override
  State<Logoutview> createState() => _LogoutviewState();
}

class _LogoutviewState extends State<Logoutview> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(
           left: 24,
           right: 24,
           
         ),
         child: Column(
          children: [
            SizedBox(
              height: 20,
              width: double.infinity,
            ),
             Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 60.h),
                    child: SizedBox(
                      height: 29.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Arrow.png'),
                          SizedBox(width: 110.w),
                           Text('account',style: Apptextstyle.headlines),
                         
                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Divider(
                        color: Colors.grey,
                        height: 1.h,
                        thickness: 0.3.h,
                      ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                      children: [
                        SizedBox(
                          height:24.h ,
                          width:24.w ,
                          child: Image.asset('assets/images/Box.png')),
                        SizedBox(width: 15.w),
                        Text(
                          'My Orders',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                     ),

                      Image.asset('assets/images/Chevron.png')
                    ],
                  )
                ],
              ),
            
            SizedBox(
              height: 20.h,
            ),
            Divider(
                        color: Colors.grey,
                        height: 1.h,
                        thickness: 0.3.h,
                      ),
                      SizedBox(height: 20.h,),
            
              
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                      children: [
                       SizedBox(
                          height:24.h ,
                          width:24.w ,
                          child: Image.asset('assets/images/Details.png')),
                        SizedBox(width: 15.w),
                        Text(
                          'My Details',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                     ),

                      Image.asset('assets/images/Chevron.png')
                    ],
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                  height: 355.h,
                  width: 341.w,
                  child: Column(
                    children: [
                      Image.asset('assets/images/Warning.png'),
                      SizedBox(height: 20.h),
                      RichText(text: TextSpan(
                        text: 'Are you sure you want to log out?\n',
                        style: Apptextstyle.headlines,
                        children: [
                          TextSpan(
                            text: ' You will need to log in again to access your account.',
                            style: Apptextstyle.subheadlines,
                          ),
                        ],
                      )),
                      SizedBox(height: 20.h),
                      Customelevatedbutton(
                        onpressed: () {
                          
                        },
                        buttontext: 'Yes , Logout',
                      ),
                      SizedBox(height: 20.h),
                      Customelevatedbutton(
                        onpressed: () {
                          
                        },
                        buttontext: 'No , Cancel',
                      ),
                      
                    ],
                  ),

                  ),
            SizedBox(
              height: 20.h,),
              
                   Row(
                      children: [
                       SizedBox(
                          height:24.h ,
                          width:24.w ,
                          child: Image.asset('assets/images/Logout.png')),
                        SizedBox(width: 15.w),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                     ),
                  
                
              
           
         ],
         ),
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    ); 
  }
}