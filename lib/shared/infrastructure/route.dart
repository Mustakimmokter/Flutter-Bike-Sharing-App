import 'package:bike_sharing/features/home/ui/screen/home_screen.dart';
import 'package:bike_sharing/features/log_in/ui/screen/log_in_screen.dart';
import 'package:bike_sharing/features/onboarding/ui/onboarding_screens/onboarding_screen_one.dart';
import 'package:bike_sharing/features/onboarding/ui/onboarding_screens/onboarding_screen_three.dart';
import 'package:bike_sharing/features/onboarding/ui/onboarding_screens/onboarding_screen_two.dart';
import 'package:bike_sharing/features/sign_up/ui/screen/sign_up_screen.dart';
import 'package:bike_sharing/features/splash/ui/screen/splash_screen.dart';
import 'package:bike_sharing/features/verification/ui/screen/verification_screen.dart';
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
        return PageTransition(
            child: OnboardingScreenOne(),
          type: PageTransitionType.rightToLeft,
          settings: routeSettings,
        );
      case '/onboardingScreenTwo':
        return PageTransition(
            child: OnboardingScreenTwo(), type: PageTransitionType.rightToLeft,settings: routeSettings,
        );
      case '/onboardingScreenThree':
        return PageTransition(
            child: OnboardingScreenThree(), type: PageTransitionType.rightToLeft,settings: routeSettings,
        );
      case '/loginScreen':
        return PageTransition(
          child: const LoginScreen(), type: PageTransitionType.rightToLeft,settings: routeSettings,
        );
      case '/singUpScreen':
        return PageTransition(
          child: const SingUpScreen(), type: PageTransitionType.rightToLeft,settings: routeSettings,
        );
      case '/verificationScreen':
        return PageTransition(
          child: const VerificationScreen(), type: PageTransitionType.rightToLeft,settings: routeSettings,
        );
      case '/homeScreen':
        return PageTransition(
          child: const HomeScreen(), type: PageTransitionType.rightToLeft,settings: routeSettings,
        );
      default:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.leftToRight,
          settings: routeSettings,);
    }

  }
}