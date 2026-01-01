import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cartitem extends StatelessWidget {
  const Cartitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: 10, bottom: 10),
      child: SizedBox(
          width: 342.w,
          height: 107.h,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                SizedBox(
                  width: 83.w,
                  height: 79.h,
                  child: Image.asset(
                    'assets/images/image.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 10.w),
                SizedBox(
                  width:213.w, 
                  height: 79.h,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 213.w,
                        height: 38.h,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 128.w,
                              height: 20.h,
                              child: Text(
                                'regular fit slogan',
                                style: Apptextstyle.bodytext.copyWith(
                                  fontSize: 14.sp,
                                 
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                             IconButton(
      icon: const Icon(Icons.delete, color: Colors.black),
      onPressed: () {
      
      },
    ),
                           
                          ],
                        ) ,

                      ),
                      SizedBox(height: 18.h,
                      width: 213.w,
                      ),
                      SizedBox(
                        width: 213.w,
                        height: 20.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$99.99',
                              style: Apptextstyle.bodytext.copyWith(
                                fontSize: 14.sp,
                                color: const Color(0xff000000),
                              ),
                            ),
                           Row(
  children: [
    IconButton(
      padding: EdgeInsets.zero, // remove default padding
      constraints: const BoxConstraints(), // shrink tap area
      icon: const Icon(Icons.remove, size: 20, color: Colors.black),
      onPressed: () {},
    ),
    Text(
      '1',
      style: Apptextstyle.bodytext.copyWith(fontSize: 14.sp),
    ),
    IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: const Icon(Icons.add, size: 20, color: Colors.black),
      onPressed: () {},
    ),
  ],
)

                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}