import 'package:flutter/material.dart';

class Step4BodyWidget extends StatefulWidget {
  const Step4BodyWidget({super.key});

  @override
  State<Step4BodyWidget> createState() => _Step4BodyWidgetState();
}

class _Step4BodyWidgetState extends State<Step4BodyWidget> {
  String? selectedOption;
  String? selectedMethod;
  TextEditingController otherCuisineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Subscription Preferences",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "Stay updated with the latest news, events, and special offers from Urban Foodie.",
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 16),
        const Text(
          "Subscribe to our Newsletter",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title:
              const Text("Yes, I want to receive the newsletter and updates"),
          value: "Yes, I want to receive the newsletter and updates",
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value.toString();
            });
          },
        ),
        const SizedBox(height: 16),
        const Text(
          "What type of cuisine do you prefer?",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Email"),
          value: "Email",
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              selectedMethod = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("SMS"),
          value: "SMS",
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(
              () {
                selectedMethod = value.toString();
              },
            );
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Push Notification"),
          value: "Push Notification",
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(
              () {
                selectedMethod = value.toString();
              },
            );
          },
        ),
      ],
    );
  }
}
