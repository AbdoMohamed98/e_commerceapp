import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/views/homepageview.dart';

import 'package:e_commerceapp2/views/my_cartview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accountview extends StatelessWidget {
  const Accountview({super.key});
  
  

@override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          height: 24.h,
                          width: 24.w,
                          child: Image.asset('assets/images/Address.png')),
                        SizedBox(width: 15.w),
                        Text(
                          'Address Book',
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
                          height: 24.h,
                          width: 24.w,
                          child: Image.asset('assets/images/Question.png')),
                        SizedBox(width: 15.w),
                        Text(
                          'FAQs',
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
                          height: 24.h,
                          width: 24.w,
                          child: Image.asset('assets/images/Headphones.png')),
                        SizedBox(width: 15.w),
                        Text(
                          'Help Center',
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
                  SizedBox(height: 20.h,),
                   Divider(
                        color: Colors.grey,
                        height: 1.h,
                        thickness: 0.3.h,
                      ),
                      SizedBox(height: 20.h,),
                  Row(
                      children: [
                        SizedBox(
                          height:24.h ,
                          width:24.w ,
                          child: Image.asset('assets/images/Logout.png',
                          color: Colors.black,
                          )),
                        SizedBox(width: 15.w),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                     ),
                  
                
              
           
         ],
         ),
       ),
     ),
//  bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Shopping cart',
//           ),
//           BottomNavigationBarItem(

//             icon: Icon(Icons.account_circle_outlined,
            
//             ),
//             label: 'Acount',
//           ),
//         ],
//       ),
    ); 
  }
}