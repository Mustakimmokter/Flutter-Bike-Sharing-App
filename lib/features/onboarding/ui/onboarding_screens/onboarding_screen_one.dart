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
              Container(
                margin: EdgeInsets.only(top: size.height / 42),
                width: double.maxFinite,
                height: size.height / 1.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/background_pattern.png'),
                  ),
                ),
              ),
              Positioned(
                left: size.width / 12,
                right: size.width / 12,
                bottom: size.width / 5,
                child: CustomSVG(svg: 'assets/icons/map_icon.svg'),
              ),
              Positioned(
                left: size.width / 12,
                right: size.width / 12,
                bottom: size.width / 2.8,
                child: CustomSVG(svg: 'assets/icons/bycicle.svg'),
              ),
            ],
          ),
          const CustomText(text: 'Locate',size: 30,fontWeight: FontWeight.w500,),
          const SizedBox(height: 10),
          const CustomText(text: 'Excepteur sint occaecat\ncupidatat non proident, sunt\nin culpa qui officia.',size: 16,),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(
                  title: 'Skip',
                  onTap: (){},
                ),
                Wrap(
                  children: List.generate(3, (index){
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: index == 0? Color(0xff3D003E):Color(0xff3D003E).withOpacity(.1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    );
                  }),
                ),
                CustomTextButton(
                  title: 'Next',
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(context, '/onboardingScreenTwo', (route) => false);
                  },
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
