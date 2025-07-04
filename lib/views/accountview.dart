import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Accountview extends StatefulWidget {
  const Accountview({super.key});

  @override
  State<Accountview> createState() => _AccountviewState();
}

class _AccountviewState extends State<Accountview> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
      children: [
        SizedBox(
          height: 20,
          width: double.infinity,
        ),
        SizedBox(
          height: 300.h,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Text('account'),
                  Icon(Icons.notifications, size: 24.sp),
                  
                ],
              ),
              Divider(
                    color: Colors.grey,
                    height: 1.h,
                    thickness: 1.h,
                  ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Image.asset('assets/images/Box.png'),
                  SizedBox(width: 10.w),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Image.asset('assets/images/Chevron.png')
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 400.h,
          width: double.infinity,
          child: Column(
            children: [
            Row(
                children: [
                  Image.asset('assets/images/Box.png'),
                  SizedBox(width: 10.w),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Image.asset('assets/images/Chevron.png')
                ],
              ),
              
              SizedBox(height: 20.h),
               Row(
                children: [
                  Image.asset('assets/images/Box.png'),
                  SizedBox(width: 10.w),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Image.asset('assets/images/Chevron.png')
                ],
              ),
              SizedBox(height: 20.h),
               Row(
                children: [
                  Image.asset('assets/images/Box.png'),
                  SizedBox(width: 10.w),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Image.asset('assets/images/Chevron.png')
                ],
              ),
              
            
          
              ],
          
        )
     )],
     ),
     bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    ); 
  }
}