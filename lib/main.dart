import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/onboarding/onboarding_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 1,),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
      ),
      home: const OnboardingHome(),
    );
  }
}
