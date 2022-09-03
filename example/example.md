```dart
import 'package:auth_handler/auth_handler.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  AuthHandler authHandler = AuthHandler();
  @override
  void initState() {
    authHandler.config();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auth Handler')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(controller: emailController),
            ElevatedButton(
              onPressed: () => authHandler.sendOtp(emailController.text),
              child: const Text('Send OTP'),
            ),
            TextFormField(controller: otpController),
            ElevatedButton(
              onPressed: () => authHandler.verifyOtp(otpController.text),
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
```