
import 'package:go_router/go_router.dart';



class RouterGenerationConfig {
  static GoRouter router = GoRouter(
    initialLocation: Approutes.homeview,
    routes: [
      GoRoute(path: Approutes.homeview,
      name:Approutes.homeview ,
       builder: (context, state) => const Homeview()),
    
      GoRoute(path: Approutes.searchresultsview,
      name: Approutes.searchresultsview,
      builder: (context, state) => const Searchresultsview(),
      ),
    
   
    
    // other routes...
  ],


    
   
      );
}