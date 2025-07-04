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
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(
              height:30.h ,
              width: double.infinity,
              child: Text('details', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 100.h,
              width: 100.h,
              child: Image.asset(
                'assets/images/image.png', // Replace with your product image path
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: 143.w,
              height: 341.h,
              child: RichText(text: TextSpan(
                text: 'Product Name\n',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'Description of the product goes here. It can be a detailed description that highlights the features and benefits of the product.', style: TextStyle(fontSize: 16.sp, color: Colors.grey)),
                ],
              )),
            ),
            Row(
              children: [
                Column(
                  children: [
                    RichText(text: TextSpan(
                      text: 'Price: \$99.99\n',
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: 'Discounted Price: \$79.99', style: TextStyle(fontSize: 16.sp, color: Colors.red)),
                      ],
                    )),
                  ],
                ),

                SizedBox(width: 20.w),
                Customelevatedbutton(
                  buttonhight: 55.h,
                  buttonwidth: 150.w,
                  buttontext: 'Add to Cart',
                )
              ],
            )
          
            // Add more product details widgets here
          ],
        ),
      ),
    );
  }
}