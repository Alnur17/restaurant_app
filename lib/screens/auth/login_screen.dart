import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/background_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Login Account',
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
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 58,
              ),
              Image.asset('assets/images/login_image.png')
            ],
          ),
        ),
      ),
    );
  }
}
