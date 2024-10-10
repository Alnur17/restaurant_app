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
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 58,
                  ),
                  Image.asset('assets/images/login_image.png'),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Email Address'),
                      const SizedBox(height: 12),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.email_outlined),
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter your email...';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      const Text('Password'),
                    ],
                  ),
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
                  const Text('Forgot password?'),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const LoginScreen(),
                      //   ),
                      // );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.orange,
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(),
                      Text('or continoue with'),
                      Divider(),
                    ],
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
