import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/auth/login_screen.dart';
import 'package:restaurant_app/widgets/background_screen.dart';
import 'package:restaurant_app/widgets/custom_button.dart';
import 'package:restaurant_app/widgets/signup_body_widget.dart';
import 'package:restaurant_app/widgets/step2_body_widget.dart';
import 'package:restaurant_app/widgets/step4_body_widget.dart';

import '../../widgets/step3_body_widget.dart';

class StepsOverview extends StatelessWidget {
  const StepsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Overview',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: BackgroundScreen(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SignupBodyWidget(),
                  const Step2BodyWidget(),
                  const Step3BodyWidget(),
                  const Step4BodyWidget(),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    color: Colors.orange,
                    text: 'Create Account',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
