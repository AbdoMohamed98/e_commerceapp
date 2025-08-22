import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Productprice extends StatelessWidget {
  const Productprice({super.key, required this.product, required this.price});
  final String product;
final String price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 342,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              product,
              style: TextStyle(
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}