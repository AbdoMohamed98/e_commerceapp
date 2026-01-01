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
                            GestureDetector(child: Image.asset('assets/images/Arrow.png'),
                            onTap: (){
                              Navigator.pop(context);
                            },
                            ),
                            SizedBox(width: 110.w),
                             Text('Details',style: Apptextstyle.headlines),
                           
                            
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
             Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product title
        const Text(
          "Fit Polo T Shirt",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 6),

        // Rating row
        Row(
          children: [
            const Icon(Icons.star, color: Colors.orange, size: 18),
            const SizedBox(width: 4),
            const Text(
              "4.0/5",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 6),
            Text(
              "(45 reviews)",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),

        const SizedBox(height: 10),

        // Product description
        const Text(
          "Blue T Shirt. Good for All Men and Sukgfjgfljgfdlkjglkdfdjgkldfdjgfkjglfkdgjits for All of Them. "
          "Blue T Shirt. Good for All Men and Suits for All of Them",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
      ],
    ),
    
              SizedBox(height:70.h),
              Divider(
                color: Colors.grey,
                thickness: 0.2,
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
                          
                    SizedBox(width: 10.w),
                    Customelevatedbutton(
                      buttonhight: 55.h,
                      buttonwidth: 240.w,
                      buttontext: 'Add to Cart',
                      onpressed: () {
                        
                      },
                      
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