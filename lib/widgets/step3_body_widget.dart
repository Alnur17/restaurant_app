import 'package:flutter/material.dart';

class Step3BodyWidget extends StatefulWidget {
  const Step3BodyWidget({super.key});

  @override
  State<Step3BodyWidget> createState() => _Step3BodyWidgetState();
}

class _Step3BodyWidgetState extends State<Step3BodyWidget> {
  String? selectedPriceRange;
  String? selectedCuisine;
  TextEditingController otherCuisineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          "Dining Preferences",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "Tell us more about your dining preferences to help us personalize your experience.",
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 16),
        const Text(
          "Preferred Price Range:",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("£5"),
          value: "£5",
          groupValue: selectedPriceRange,
          onChanged: (value) {
            setState(() {
              selectedPriceRange = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("£50"),
          value: "£50",
          groupValue: selectedPriceRange,
          onChanged: (value) {
            setState(() {
              selectedPriceRange = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("£100"),
          value: "£100",
          groupValue: selectedPriceRange,
          onChanged: (value) {
            setState(() {
              selectedPriceRange = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("£1000"),
          value: "£1000",
          groupValue: selectedPriceRange,
          onChanged: (value) {
            setState(() {
              selectedPriceRange = value.toString();
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
          title: const Text("Italian"),
          value: "Italian",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Chinese"),
          value: "Chinese",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Mexican"),
          value: "Mexican",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Japanese"),
          value: "Japanese",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Mediterranean"),
          value: "Mediterranean",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("French"),
          value: "French",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("American"),
          value: "American",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Thai"),
          value: "Thai",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: const Text("Spanish"),
          value: "Spanish",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
        RadioListTile(
          activeColor: Colors.orange,
          title: Row(
            children: [
              const Text("Other (Specify): "),
              Expanded(
                child: TextField(
                  controller: otherCuisineController,
                  decoration: const InputDecoration(
                    isDense: false,
                    //contentPadding: EdgeInsets.symmetric(
                    //vertical: 0, horizontal: 8),
                  ),
                ),
              ),
            ],
          ),

          value: "Other",
          groupValue: selectedCuisine,
          onChanged: (value) {
            setState(() {
              selectedCuisine = value.toString();
            });
          },
        ),
      ],
    );
  }
}
