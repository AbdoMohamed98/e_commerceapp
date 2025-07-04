import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logoutview extends StatefulWidget {
  const Logoutview({super.key});

  @override
  State<Logoutview> createState() => _LogoutviewState();
}

class _LogoutviewState extends State<Logoutview> {
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
              Image.asset('assets/images/Vector.png'),
              SizedBox(height: 20.h),
              SizedBox(
                child: RichText(
                  text: TextSpan(
                    text: 'Are you sure you want to logout?\n',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'You will be redirected to the login page.',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  
                  
                ),
              ),
              Customelevatedbutton(
                buttonhight: 55.h,
                buttonwidth: 150.w,
                buttontext: 'Logout',
              
              ),
              SizedBox(height: 20.h),
              Customelevatedbutton(
                buttonhight: 55.h,
                buttonwidth: 150.w,
                buttontext: 'Cancel',
              
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