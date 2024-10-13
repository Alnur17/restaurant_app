import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String titleFirstHalf;
  final String titleSecondHalf;
  final String description;
  final String imagePath;
  final Color firstColor;
  final Color secondColor;

  const OnboardingWidget({
    super.key,
    required this.titleFirstHalf,
    required this.titleSecondHalf,
    required this.description,
    required this.imagePath,
    this.firstColor = Colors.black,
    this.secondColor = const Color(0xFFFF8333),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 250,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: titleFirstHalf,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RFBarbariskarough2-Regular',
                    color: firstColor,
                  ),
                ),
                TextSpan(
                  text: titleSecondHalf,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RFBarbariskarough2-Regular',
                    color: secondColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
