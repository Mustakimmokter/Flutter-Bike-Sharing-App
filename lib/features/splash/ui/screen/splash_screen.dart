import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2af49a),
              Color(0xff0bb4e4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 12),
            // Logo
            const CustomSVG(
              svg: 'assets/icons/bike_sharing_logo.svg',
            ),
            const Spacer(flex: 8),
           Column(
             children: [
               // Get Started Button
               CustomBottomButton(
                 title: 'Get Started',
                 onPressed: (){
                   Navigator.pushNamedAndRemoveUntil(context, '/onboardingScreenOne', (route) => false);
                 },
                 backgroundColor: Colors.white,
               ),
               const SizedBox(height: 10),
               // Log In Button
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const CustomText(
                     text: 'Already have an account?',
                   ),
                   const SizedBox(width: 10),
                   CustomTextButton(
                     title: 'Log in',
                     onTap: (){
                       print('Log in button');
                     },
                   ),
                 ],
               ),
             ],
           ),
            const Spacer(flex: 2),
          ],
        ),
      ),

    );
  }
}
