import 'package:bike_sharing/shared/widgets/index.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width / 126);
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
                    top: size.height / 8.5,
                    left: 30,
                    child: const CustomText(text: 'Log in',size: 30,fontWeight: FontWeight.bold,),
                  ),
                  Positioned(
                    top: size.height / 5.8,
                    left: 30,
                    child: Container(
                      width: 48,
                      height: 6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height / 8,
                    left: size.width / 2.5,
                    child: GestureDetector(
                        child: CustomText(
                          text: 'Sign up',size: 20,color: Color(0xff3D003E).withOpacity(.3),fontWeight: FontWeight.bold,
                        ),
                      onTap: (){
                        Navigator.pushNamedAndRemoveUntil(context, '/singUpScreen', (route) => false);
                      },
                    ),
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
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          CountryCodePicker(
                            onChanged: (cod) {
                            },
                            favorite: const ['+088','BD'],
                            showCountryOnly: false,
                            showFlag: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                            builder: (code) {
                              return Row(
                                children: [
                                  CustomText(text: '$code',size: 20,),
                                  const SizedBox(width: 30,),
                                  const CustomSVG(svg: 'assets/icons/down_arrow.svg'),
                                ],
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: size.width / 3,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Color(0xffC7C7CC),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 20),
                     // TextFormField
                     const Expanded(
                       child: CustomTextFormField(
                         icon: 'assets/icons/check_icon.svg',
                       ),
                     ),
                    ],
                  ),
                  const Spacer(flex: 2,),
                  CustomText(text: 'Log in with your phone number',size: 16,color: Color(0xff3D003E).withOpacity(.3),),
                  const Spacer(flex: 15,),
                  CustomBottomButton(
                    horizontalPadding: 0,
                    title: 'Log in',
                    onPressed: (){
                      Navigator.pushNamed(context, '/verificationScreen');
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
