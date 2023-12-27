import 'package:bike_sharing/features/onboarding/ui/onboarding_screens/onboarding_screen_one.dart';
import 'package:bike_sharing/features/onboarding/ui/onboarding_screens/onboarding_screen_two.dart';
import 'package:bike_sharing/features/splash/ui/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRoute {


  static Route appRoute(RouteSettings routeSettings){

    switch(routeSettings.name){
      case '/':
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.leftToRight,
          settings: routeSettings,);
      case '/onboardingScreenOne':
        return PageTransition(child: OnboardingScreenOne(), type: PageTransitionType.rightToLeft,settings: routeSettings);
      case '/onboardingScreenTwo':
        return PageTransition(child: OnboardingScreenTwo(), type: PageTransitionType.rightToLeft,settings: routeSettings);
      default:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.leftToRight,
          settings: routeSettings,);
    }

  }
}