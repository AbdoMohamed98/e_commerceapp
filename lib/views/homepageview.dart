import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/widgets/categorycart.dart';
import 'package:e_commerceapp2/widgets/customtextfield.dart';
import 'package:e_commerceapp2/widgets/productcart.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepageview extends StatelessWidget {
  Homepageview({super.key});

  final List<String> categories = [
    'All',
    'T-shirts',
    'Jeans',
    'Shoes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            children: [
              Container(
                height: 32.h,
                width: 128.w,
                child: Text('Discover', style: Apptextstyle.headlines),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              SizedBox(
                width: 281.w,
                height: 52.h,
                child: Customtextfield(
                  customtextfieldhinttext: 'search for clothes...',
                  prefixIcon: const Icon(Icons.search),
                  onChanged: (value) {},
                  hintText: '',
                ),
              )
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Categorycart(categoryName: categories[index]);
              },
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 500.h,
            width: double.infinity,
            child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
            ),
            children: [
              Productcart(),
              Productcart(),
              Productcart(),
              Productcart(),
            ],
            ),
          )
        ],
      ),
    );
  }
}
