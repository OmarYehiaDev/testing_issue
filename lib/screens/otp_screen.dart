import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.dart';

@RoutePage()
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await router.pushAndPopUntil(const MainRoute(), predicate: (_) => false);
          },
          child: const Text("VERIFY"),
        ),
      ),
    );
  }
}
