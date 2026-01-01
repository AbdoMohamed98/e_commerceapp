import 'package:e_commerceapp2/core/appstyle/apptextstyle.dart';
import 'package:e_commerceapp2/models/productmodel.dart';
import 'package:e_commerceapp2/services/getproductservice.dart';

import 'package:e_commerceapp2/widgets/categorycart.dart';
import 'package:e_commerceapp2/widgets/customtextformfield.dart';
import 'package:e_commerceapp2/widgets/productcart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homecontentview extends StatefulWidget {
  const Homecontentview({super.key});

  @override
  State<Homecontentview> createState() => _HomecontentviewState();
}

class _HomecontentviewState extends State<Homecontentview> {
  final ProductService _productService = ProductService();
  late Future<List<Productmodel>> _productsFuture;

  final List<String> categories = [
    'All',
    'T-shirts',
    'Jeans',
    'Shoes',
    'Accessories',
    'Dresses',
    'Jackets',
  ];

  @override
  void initState() {
    super.initState();
    _productsFuture = _productService.getProducts();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 Title
            Text(
              'Discover',
              style: Apptextstyle.headlines,
            ),

            SizedBox(height: 10.h),

            /// 🔹 Search Field
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
            ),

            SizedBox(height: 20.h),

            /// 🔹 Categories
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Categorycart(
                    categoryName: categories[index],
                  );
                },
              ),
            ),

            SizedBox(height: 20.h),

            /// 🔹 Products Grid (API)
            FutureBuilder<List<Productmodel>>(
              future: _productsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      snapshot.error.toString(),
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                }

                final products = snapshot.data!;

                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Productcart(
                    
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
