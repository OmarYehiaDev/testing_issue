import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await router.replace(const OtpRoute());
          },
          child: const Text("LOGIN"),
        ),
      ),
    );
  }
}
