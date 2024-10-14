import 'package:flutter/material.dart';

import 'date_picker_textformfield.dart';

class Step2BodyWidget extends StatefulWidget {
  const Step2BodyWidget({super.key});

  @override
  State<Step2BodyWidget> createState() => _Step2BodyWidgetState();
}

class _Step2BodyWidgetState extends State<Step2BodyWidget> {
  final TextEditingController _dateController1 = TextEditingController();
  final TextEditingController _dateController2 = TextEditingController();
  final TextEditingController _dateController3 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Text(
          'Do you have any special occasions you\'d like us to remind you about?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        const Text('Occasion 1'),
        const SizedBox(height: 12),
        TextFormField(
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please confirm your password...';
            }
            return null;
          },
        ),
        const SizedBox(height: 12),
        const Text('Date'),
        const SizedBox(height: 12),
        DatePickerTextFormField(
          controller: _dateController1,
        ),
        const SizedBox(height: 12),
        const Text('Occasion 2'),
        const SizedBox(height: 12),
        TextFormField(
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please confirm your password...';
            }
            return null;
          },
        ),
        const SizedBox(height: 12),
        const Text('Date'),
        const SizedBox(height: 12),
        DatePickerTextFormField(
          controller: _dateController2,
        ),
        const SizedBox(height: 12),
        const Text('Occasion 3'),
        const SizedBox(height: 12),
        TextFormField(
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please confirm your password...';
            }
            return null;
          },
        ),
        const SizedBox(height: 12),
        const Text('Date'),
        const SizedBox(height: 12),
        DatePickerTextFormField(
          controller: _dateController3,
        ),
      ],
    );
  }
}
