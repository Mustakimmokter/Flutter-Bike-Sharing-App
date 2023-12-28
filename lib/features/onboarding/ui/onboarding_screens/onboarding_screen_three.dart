import 'package:bike_sharing/features/onboarding/ui/components/index.dart';
import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

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
                child: const CustomSVG(svg: 'assets/icons/cycle_rider.svg'),
              ),
            ],
          ),
          const CustomText(text: 'Ride',size: 30,fontWeight: FontWeight.w500,),
          const SizedBox(height: 10),
          const CustomText(text: 'Culpa qui officia deserunt\nmollit anim id est laborum.',
            size: 16,
          ),
          const Spacer(),
          BottomPortion(
            onboardingScreen: 2,
            skip: (){
              Navigator.pushNamedAndRemoveUntil(context, '/loginScreen', (route) => false);
            },
            next: () {
              Navigator.pushNamedAndRemoveUntil(context, '/loginScreen', (route) => false);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
