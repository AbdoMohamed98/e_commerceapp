
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
 // Fetch world news data on app start

  runApp(
    
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      child: E_commerceapp2(),
    ),
  );
}

class E_commerceapp2 extends StatelessWidget {
  const E_commerceapp2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 923),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          routerConfig: RouterGenerationConfig.router,
        );
      },
     
    );
  }
}