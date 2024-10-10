import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  final Widget child;

  const BackgroundScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Opacity(
            opacity: 0.10,
            child: Image.asset('assets/images/BACKGROUND 2.png'),
          ),
        ),
        SafeArea(child: child),
      ],
    );
  }
}
