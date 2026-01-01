import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart' as lottie;

class Loadingwedget extends StatelessWidget {
  const Loadingwedget ({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 50.w,
      height: 50.h,
      child: Center(
        child:lottie.LottieBuilder.asset(
          'assets/lottie/Loading.json',
          width: 150,
          height: 150,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}