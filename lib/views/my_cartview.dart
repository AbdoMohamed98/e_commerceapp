import 'package:e_commerceapp2/views/accountview.dart';
import 'package:e_commerceapp2/widgets/cartitem.dart';
import 'package:e_commerceapp2/widgets/customelevatedbutton.dart';
import 'package:e_commerceapp2/widgets/productcart.dart';
import 'package:e_commerceapp2/widgets/productprice.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCartview extends StatelessWidget {
  const MyCartview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('My Cart').tr(),
      centerTitle: true,
     ),
     body:   
     
     
     
      SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Column(
            children:[
              
              Cartitem(),
              Cartitem(),
              SizedBox(height: 140.h),
              Productprice(
                product: 'Total Price',
                price: '\$199.98',
              ),
              Productprice(product:'vat' , price:'\$199.98' ),
              Productprice(product: 'Shipping fee', price: '\$199.98'),
              Divider(
                color: Colors.grey,
                thickness: 1,),
                Productprice(product: 'Shipping fee', price: '\$199.98'),

              SizedBox(height: 20.h),
              Customelevatedbutton(
                buttontext: 'go to checkout',
                icon: Icons.arrow_forward,
               
                
                
                onpressed: () {
                  
                },
              )
              ]
          ),
        ),
      ) ,
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart),
      //       label: 'Shopping cart',
      //     ),
      //     BottomNavigationBarItem(

      //       icon: Icon(Icons.account_circle_outlined,
            
      //       ),
      //       label: 'Acount',
      //     ),
      //   ],
      // ),


    );
  }
}