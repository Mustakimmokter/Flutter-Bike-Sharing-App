import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Container(
            width: double.maxFinite,
            height: size.height / 3.4,
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
            child: Stack(
              children: [
                Positioned(
                  top: size.height / 9,
                  left: 30,
                  child: GestureDetector(
                    child: const CustomSVG(svg: 'assets/icons/chevron-left.svg'),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: size.height / 6.5,
                  left: 30,
                  child: const CustomText(text: 'Verification',size: 30,fontWeight: FontWeight.bold,),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height / 4.45,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                ),
              ),
              child: Column(
                children: [
                  PinCodeTextField(
                    appContext: context,
                    autoFocus: true,
                    length: 4,
                    pinTheme: PinTheme(
                      activeColor: Colors.grey.shade200,
                      disabledColor: Colors.grey.shade200,
                      inactiveColor: Colors.grey.shade200,
                      selectedColor: Colors.grey.shade200,
                      fieldWidth: size.width / 6
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    animationType: AnimationType.fade,
                    onChanged: (value) {
                    },
                  ),
                  const Spacer(flex: 2,),
                  const CustomText(text: 'Donec viverra eleifend lacus, vitae\nullamcorper metus sed.',size: 16,),
                  const Spacer(flex: 2,),
                  const CustomText(text: '+123 123 45 67',size: 18,fontWeight: FontWeight.bold,),
                  const Spacer(flex: 2,),
                   GestureDetector(
                     child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(colors: [
                      Color(0xff2af49a),
                      Color(0xff0bb4e4),
                  ],).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: const CustomText(
                      text: 'Didn’t receive SMS?',
                      size: 15,
                  ),
                ),
                     onTap: (){
                       print('Resend code');
                     },
                   ),
                  const Spacer(flex: 15,),
                  CustomBottomButton(
                    horizontalPadding: 0,
                    title: 'Continue',
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/homeScreen', (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
