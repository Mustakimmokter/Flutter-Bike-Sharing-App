import 'package:flutter/material.dart';

class BottomPortion extends StatelessWidget {
  const BottomPortion({super.key, required this.skip, required this.next, required this.onboardingScreen});

  final VoidCallback skip,next;
  final int onboardingScreen;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: skip,
            child: const Text('Skip',style: TextStyle(
              color: Color(0xff3D003E), fontWeight: FontWeight.bold,),),
          ),
          Wrap(
            children: List.generate(3, (index){
              return Container(
                margin: const EdgeInsets.only(right: 10),
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: index == onboardingScreen? const Color(0xff3D003E):const Color(0xff3D003E).withOpacity(.1),
                  borderRadius: BorderRadius.circular(100),
                ),
              );
            }),
          ),
          GestureDetector(
            onTap: next,
            child: const Text('Next',style: TextStyle(
              color: Color(0xff3D003E), fontWeight: FontWeight.bold,),),
          ),
        ],
      ),
    );
  }
}
