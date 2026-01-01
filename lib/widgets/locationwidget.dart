import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Locationwidget extends StatelessWidget {
  const Locationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 341.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300 ,
      
        
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,bottom: 8,left: 16,right: 16
        ),
        child: SizedBox(
          height: 44.h,
          width: 263.w,
          child: Row(
            children: [
              
              Image.asset('assets/images/Location.png'),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Text('jfjghfghfdklfdklghfklhglrhgrelkhdghfk',
                   maxLines: 1,
                   style: Apptextstyle.headlines,
                   overflow: TextOverflow.ellipsis,
                   
                   ),
                    Text(
                      '123, Main Strdlfkjrsk/gjlr;gjl;rejreet, ',
                      maxLines: 1,
                      style: Apptextstyle.subheadlines,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}