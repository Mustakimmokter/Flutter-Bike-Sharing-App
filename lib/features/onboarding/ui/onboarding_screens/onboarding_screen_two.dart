import 'package:bike_sharing/features/onboarding/ui/components/index.dart';
import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

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
                child: const CustomSVG(svg: 'assets/icons/only_cycle.svg'),
              ),
              Positioned(
                left: 0,
                right: size.width / 2.8,
                bottom: size.height / 25,
                child: CustomSVG(svg: 'assets/icons/phone_qr.svg',width: size.width/ 3,),
              ),
            ],
          ),
          const CustomText(text: 'Unlock',size: 30,fontWeight: FontWeight.w500,),
          const SizedBox(height: 10),
          const CustomText(text: 'Sunt in culpa qui officia\ndeserunt mollit anim id\nest laborum.',
            size: 16,
          ),
          const Spacer(),
          BottomPortion(
            onboardingScreen: 1,
            skip: (){
              Navigator.pushNamedAndRemoveUntil(context, '/loginScreen', (route) => false);
            },
            next: () {
              Navigator.pushNamedAndRemoveUntil(context, '/onboardingScreenThree', (route) => false);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
