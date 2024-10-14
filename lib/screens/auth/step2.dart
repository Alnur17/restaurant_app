import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/auth/step3.dart';
import 'package:restaurant_app/widgets/background_screen.dart';
import 'package:restaurant_app/widgets/custom_button.dart';
import 'package:restaurant_app/widgets/step2_body_widget.dart';

class Step2 extends StatelessWidget {
  const Step2({super.key});

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
            'Step 2',
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
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Step2BodyWidget(),
                  const SizedBox(height: 48),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Step3(),
                        ),
                      );
                    },
                    text: 'Next',
                    isExpanded: true,
                    color: Colors.orange,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
