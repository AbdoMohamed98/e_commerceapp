import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categorycart extends StatelessWidget {
  final String categoryName;

  const Categorycart({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.w,
      height: 36.h,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: const Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
