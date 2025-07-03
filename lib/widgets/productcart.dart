import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productcart extends StatelessWidget {
  const Productcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
          width: 160.w,
          child: Image.asset('assets/images/image.png', fit: BoxFit.cover),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 20.h,
          width: 160.w,
          child: Text(
            'Product Name',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff000000),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 5.h),
        SizedBox(
          height: 20.h,
          width: 160.w,
          child: Text(
            '\$99.99',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff000000),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ) ;
  }
}