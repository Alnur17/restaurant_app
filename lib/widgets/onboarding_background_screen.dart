import 'package:flutter/material.dart';

class OnboardingBackgroundScreen extends StatelessWidget {
  final Widget child;

  const OnboardingBackgroundScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.10,
            child: Image.asset(
              'assets/images/onboarding_background.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}
