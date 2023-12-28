import 'package:bike_sharing/features/onboarding/ui/components/index.dart';
import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              BackgroundPattern(
                size: size,
                pattern: 'assets/icons/background_pattern.png',

              ),
              Positioned(
                left: size.width / 12,
                right: size.width / 12,
                bottom: size.width / 10,
                child: CustomSVG(svg: 'assets/icons/map_icon.svg'),
              ),
              Positioned(
                left: size.width / 12,
                right: size.width / 12,
                bottom: size.width / 3.5,
                child: CustomSVG(svg: 'assets/icons/bycicle.svg'),
              ),
            ],
          ),
          const CustomText(text: 'Locate',size: 30,fontWeight: FontWeight.w500,),
          const SizedBox(height: 10),
          const CustomText(text: 'Excepteur sint occaecat\ncupidatat non proident, sunt\nin culpa qui officia.',size: 16,),
          const Spacer(),
         BottomPortion(
           onboardingScreen: 0,
           skip: (){
             Navigator.pushNamedAndRemoveUntil(context, '/loginScreen', (route) => false);
           },
           next: () {
             Navigator.pushNamedAndRemoveUntil(context, '/onboardingScreenTwo', (route) => false);
           },
         ),
          const Spacer(),
        ],
      ),
    );
  }
}
