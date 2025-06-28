
import 'package:e_commerceapp2/core/navigation/approutes.dart';
import 'package:e_commerceapp2/views/accountview.dart';
import 'package:e_commerceapp2/views/addressview.dart';
import 'package:e_commerceapp2/views/loginview.dart';
import 'package:e_commerceapp2/views/my_cartview.dart';
import 'package:e_commerceapp2/views/productdetails.dart';
import 'package:e_commerceapp2/views/sign_upview.dart';
import 'package:go_router/go_router.dart';



class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.signUpview,
    routes: [

      GoRoute(path: Approutes.accountview,
      name:Approutes.accountview ,
       builder: (context, state) => const Accountview(),),
    
      GoRoute(path: Approutes.addressview,
      name: Approutes.addressview,
      builder: (context, state) => const Addressview(),
      ),
      GoRoute(path: Approutes.myCartview,
      name: Approutes.myCartview,
      builder: (context, state) => const MyCartview() , 
      ),
      GoRoute(path: Approutes.productdetails,
      name: Approutes.productdetails,
      builder: (context, state) => const Productdetails(), // Replace with actual ProductDetails view
      ),
      GoRoute(path: Approutes.signUpview,
      name: Approutes.signUpview,
      builder: (context, state) => const SignUpview(), // Replace with actual SignUp view
      ),
      GoRoute(
       path: Approutes.loginview,
        name: Approutes.loginview,
        builder: (context, state) => const Loginview()
        ),

      
    
   
    
    
  ],


    
   
      );
}