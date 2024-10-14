import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerTextFormField extends StatefulWidget {
  final TextEditingController controller;
  const DatePickerTextFormField({super.key, required this.controller});

  @override
  State<DatePickerTextFormField> createState() => _DatePickerTextFormFieldState();
}

class _DatePickerTextFormFieldState extends State<DatePickerTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: const InputDecoration(
        labelText: 'Select Date',
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode()); // To prevent keyboard from appearing
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1800),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
          setState(() {
            widget.controller.text = formattedDate; // Update the value
          });
        }
      },
    );
  }
}
