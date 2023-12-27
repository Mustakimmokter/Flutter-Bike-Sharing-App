import 'package:bike_sharing/features/splash/ui/screen/splash_screen.dart';
import 'package:bike_sharing/shared/infrastructure/route.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialRoute: '/',
      onGenerateRoute: AppRoute.appRoute,
    );
  }
}
