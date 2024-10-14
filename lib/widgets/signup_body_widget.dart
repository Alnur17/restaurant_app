import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'date_picker_textformfield.dart';

class SignupBodyWidget extends StatefulWidget {
  const SignupBodyWidget({super.key});

  @override
  State<SignupBodyWidget> createState() => _SignupBodyWidgetState();
}

class _SignupBodyWidgetState extends State<SignupBodyWidget> {
  final TextEditingController _dateController = TextEditingController();
  String? selectedGender = 'Male';
  List<String> gender = ['Male', 'Female', 'Others'];
  String userType = 'User';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Stack(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage:
              AssetImage('assets/images/profile image.jpeg'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  // Add functionality to update profile image here
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Radio(
                  value: 'User',
                  groupValue: userType,
                  onChanged: (value) {
                    setState(() {
                      userType = value.toString();
                    });
                  },
                  activeColor: Colors.green,
                ),
                const Text('User'),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Vendor',
                  groupValue: userType,
                  onChanged: (value) {
                    setState(() {
                      userType = value.toString();
                    });
                  },
                  activeColor: Colors.green,
                ),
                const Text('Vendor'),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Full name'),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your first name...';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your last name...';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text('Email Address'),
            const SizedBox(height: 12),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your email...';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            const Text('Contact'),
            const SizedBox(height: 12),
            IntlPhoneField(
              dropdownIconPosition: IconPosition.trailing,
              initialCountryCode: 'BD',
              // Default country code
              onChanged: (phone) {
                print(phone
                    .completeNumber); // full number with country code
              },
              validator: (phone) {
                if (phone?.completeNumber.isEmpty ?? true) {
                  return 'Please enter a valid contact number';
                }
                return null;
              },
            ),
            //const SizedBox(height: 16),
            const Text('Location'),
            const SizedBox(height: 12),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.location_on_outlined),
                //labelText: 'Dhaka, Bangladesh',
                hintText: 'Dhaka, Bangladesh',
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your contact number...';
                } else if (!RegExp(r'^\d{10,}$')
                    .hasMatch(value!)) {
                  return 'Please enter a valid contact number';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            const Text('Gender'),
            const SizedBox(height: 12),
            DropdownButtonFormField(
              value: selectedGender,
              items: gender.map((String gender) {
                return DropdownMenuItem(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedGender = newValue;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select a country';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            const Text('Date of Birth'),
            const SizedBox(height: 12),
            DatePickerTextFormField(
              controller: _dateController,
            ),
            const SizedBox(height: 12),
            const Text('Password'),
            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter your password...';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            const Text('Confirm Password'),
            const SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please confirm your password...';
                }
                return null;
              },
            ),
          ],
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
