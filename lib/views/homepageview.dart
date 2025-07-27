import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/views/accountview.dart';
import 'package:e_commerceapp2/views/my_cartview.dart';
import 'package:e_commerceapp2/widgets/categorycart.dart';
import 'package:e_commerceapp2/widgets/customtextformfield.dart';
import 'package:e_commerceapp2/widgets/productcart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homepageview extends StatefulWidget {
  const Homepageview({super.key});

  @override
  State<Homepageview> createState() => _HomepageviewState();
}

class _HomepageviewState extends State<Homepageview> {
  int _selectedIndex = 0;

  final List<String> categories = [
    'All',
    'T-shirts',
    'Jeans',
    'Shoes',
    'Accessories',
    'Dresses',
    'Jackets',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
       if (index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyCartview()),
    );
  }else if (index == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Accountview()),
    );
    }});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 60.h,
          bottom: 20.h,
        ),
        child: Column(
          children: [
          
            Row(
              children: [
                SizedBox(
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
                  child: Customtextformfield(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a search term';
                      }
                      return null;
                    },
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
              
              width: double.infinity,
              child: GridView(
                
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                ),
                children: const [
                  Productcart(),
                  Productcart(),
                  Productcart(),
                  Productcart(),
                   Productcart(),
                  Productcart(),
                  Productcart(),
                  Productcart(),
                ],
              ),
            ),
          ],
        ),
      ),

      // ✅ BottomNavigationBar added here:
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
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping cart',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.account_circle_outlined,
            
            ),
            label: 'Acount',
          ),
        ],
      ),
    );
  }
}
