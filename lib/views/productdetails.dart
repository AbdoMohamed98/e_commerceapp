import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Column(
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
              SizedBox(
                height: 370.h,
                width: 340.h,
                child: Image.asset(
                  'assets/images/image.png', // Replace with your product image path
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 341.w,
                height: 143.h,
                child: RichText(text: TextSpan(
                  text: 'Product Name\n',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: 'Description of the product goes here. It can be a detailed description that highlights the features and benefits of the product.', style: TextStyle(fontSize: 16.sp, color: Colors.grey)),
                  ],
                )),
              ),
              SizedBox(height: 105.h,
              width:390 ,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.start ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 105.h,
                          width: 85.w,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(text: TextSpan(
                              text: 'Price: \n',
                              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: '\$99.99', style: TextStyle(fontSize: 16.sp, color: Colors.red)),
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                          
                    SizedBox(width: 20.w),
                    Customelevatedbutton(
                      buttonhight: 55.h,
                      buttonwidth: 150.w,
                      buttontext: 'Add to Cart',
                    )
                  ],
                ),
              )
            
              // Add more product details widgets here
            ],
          ),
        ),
      ),
    );
  }
}