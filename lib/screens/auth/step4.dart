import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/auth/steps_overview.dart';
import 'package:restaurant_app/widgets/background_screen.dart';
import 'package:restaurant_app/widgets/custom_button.dart';
import 'package:restaurant_app/widgets/step4_body_widget.dart';

class Step4 extends StatelessWidget {
  const Step4({super.key});

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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // Ensure the column doesn't expand infinitely
              children: [
                const Step4BodyWidget(),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StepsOverview(),
                      ),
                    );
                  },
                  color: Colors.orange,
                  text: 'Next',
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
