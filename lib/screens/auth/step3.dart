import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/auth/step4.dart';
import 'package:restaurant_app/widgets/background_screen.dart';
import 'package:restaurant_app/widgets/custom_button.dart';
import 'package:restaurant_app/widgets/step3_body_widget.dart';

class Step3 extends StatelessWidget {
  const Step3({super.key});

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
            'Step 3',
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Step3BodyWidget(),
                  const SizedBox(height: 20),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Step4(),
                        ),
                      );
                    },
                    color: Colors.orange,
                    text: 'Next',
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
