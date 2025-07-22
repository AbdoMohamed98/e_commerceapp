import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addressview extends StatelessWidget {
  const Addressview({super.key});

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
                               Text('Address',style: Apptextstyle.headlines),
                             
                              
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
                  Align
                  
                  (
                    alignment: Alignment.topLeft,
                    child: Text('Saved Address'))
          ,
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 340.w,
            height: 75.h,
            child:Row(
children: [
  Image.asset('assets/images/Location.png'),
  SizedBox(width: 15.w),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RichText(
  text: TextSpan(
    text: 'Home jhrkhfrkjfhjkh     \n',
    style: Apptextstyle.headlines,
    children: [
      TextSpan(
        text: ' (Default)',
        style: Apptextstyle.subheadlines,
      ),
    ],
  ),
)

    ],
  )
],


            ) ,
          ),
           SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 340.w,
            height: 75.h,
            child:Row(
children: [
  Image.asset('assets/images/Location.png'),
  SizedBox(width: 15.w),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RichText(
  text: TextSpan(
    text: 'Home jhrkhfrkjfhjkh     \n',
    style: Apptextstyle.headlines,
    children: [
      TextSpan(
        text: ' (Default)',
        style: Apptextstyle.subheadlines,
      ),
    ],
  ),
)

    ],
  )
],


            ) ,
          ),
           SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 340.w,
            height: 75.h,
            child:Row(
children: [
  Image.asset('assets/images/Location.png'),
  SizedBox(width: 15.w),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RichText(
  text: TextSpan(
    text: 'Home jhrkhfrkjfhjkh     \n',
    style: Apptextstyle.headlines,
    children: [
      TextSpan(
        text: ' (Default)',
        style: Apptextstyle.subheadlines,
      ),
    ],
  ),
)

    ],
  )
],


            ) ,
          ),
           SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 340.w,
            height: 75.h,
            child:Row(
children: [
  Image.asset('assets/images/Location.png'),
  SizedBox(width: 15.w),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RichText(
  text: TextSpan(
    text: 'Home jhrkhfrkjfhjkh     \n',
    style: Apptextstyle.headlines,
    children: [
      TextSpan(
        text: ' (Default)',
        style: Apptextstyle.subheadlines,
      ),
    ],
  ),
)

    ],
  )
],


            ) ,
          )

            ],
          ),
        ),
      ),
    );
  }
}