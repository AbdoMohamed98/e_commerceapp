import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';

import 'package:e_commerceapp2/widgets/locationwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addressview extends StatelessWidget {
  const Addressview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: SizedBox(
                  height: 29.h,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Arrow.png'),
                      SizedBox(width: 110.w),
                      Text('Address', style: Apptextstyle.headlines),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Divider(color: Colors.grey, height: 1.h, thickness: 0.3.h),
              SizedBox(height: 20.h),
              Align(alignment: Alignment.topLeft, child: Text('Saved Address',
              style: Apptextstyle.headlines.copyWith(
                 fontSize: 20
              ),
              )),
              SizedBox(height: 20.h),
              Locationwidget(),
              SizedBox(height: 20.h),
             Locationwidget(),
              SizedBox(height: 20.h),
             Locationwidget(),
              
              SizedBox(height: 20.h),
              Locationwidget(),
              SizedBox(height: 20.h),
              Locationwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
