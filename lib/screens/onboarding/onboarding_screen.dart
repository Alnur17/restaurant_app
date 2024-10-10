import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:restaurant_app/constants/constant_data.dart';
import 'package:restaurant_app/widgets/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: const [
              OnboardingWidget(
                titleFirstHalf: ConstantData.titleFirstHalf1,
                titleSecondHalf: ConstantData.titleSecondHalf1,
                description: ConstantData.description1,
                imagePath: ConstantData.imagePath1,
              ),
              OnboardingWidget(
                titleFirstHalf: ConstantData.titleFirstHalf2,
                titleSecondHalf: ConstantData.titleSecondHalf2,
                description: ConstantData.description2,
                imagePath: ConstantData.imagePath2,
              ),
              OnboardingWidget(
                titleFirstHalf: ConstantData.titleFirstHalf3,
                titleSecondHalf: ConstantData.titleSecondHalf3,
                description: ConstantData.description3,
                imagePath: ConstantData.imagePath3,
              ),
              OnboardingWidget(
                titleFirstHalf: ConstantData.titleFirstHalf4,
                titleSecondHalf: ConstantData.titleSecondHalf4,
                description: ConstantData.description4,
                imagePath: ConstantData.imagePath4,
                firstColor: Color(0xFFFF8333),
                secondColor: Colors.black,
              ),
            ],
          ),
          Positioned(
            bottom: 30.0,
            left: 0,
            right: 0,
            child: Center(
              child: DotsIndicator(
                dotsCount: 4,
                position: currentIndex,
                decorator: DotsDecorator(
                  activeColor: const Color(0xFFFF8333),
                  size: const Size.square(12.0),
                  activeSize: const Size(20.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}