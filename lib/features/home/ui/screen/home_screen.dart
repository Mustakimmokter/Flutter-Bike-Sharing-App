import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:  Container(
        padding: EdgeInsets.only(top: size.height / 10),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.width / 6,
                        width: size.width / 6,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 3),
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage('assets/icons/Edited__04.png')
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const CustomSVG(svg: 'assets/icons/search_icon.svg',width: 28,),
                        onTap: (){
                          print("Search");
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const CustomText(text: 'Hello John,',size: 30,fontWeight: FontWeight.bold,),
                  const SizedBox(height: 5),
                  const CustomText(text: 'Wanna take a ride today?',),
                ],
              )
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.5),
                boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.16),
                  blurRadius: 30,
                  offset: Offset(0, 12)
                ),
                ],
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSVG(svg: 'assets/icons/cloudly.svg'),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(text: '18º',size: 32,),
                              CustomText(text: 'Cloudly',size: 16,),
                            ],
                          ),
                          CustomText(text: 'Marbella Dr',size: 16,),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.16),
                            blurRadius: 30,
                            offset: Offset(0, 12)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ],
              ),
            ),
            // Near By
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Near You',size: 21,fontWeight: FontWeight.bold,),
                  Row(
                    children: [
                      CustomText(text: 'Browse Map',size: 16,),
                      SizedBox(width: 5),
                      CustomSVG(svg: 'assets/icons/right_arrow.svg',),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20,bottom: 20,top: 20),
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.all(20),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.16),
                            blurRadius: 30,
                            offset: Offset(0, 12)
                        ),
                      ],
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(24),
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/bitmap_cycle.png',scale: 1.5,),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
