import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.dart';

@RoutePage()
class TargetScreen extends StatefulWidget {
  const TargetScreen({super.key});

  @override
  State<TargetScreen> createState() => _TargetScreenState();
}

class _TargetScreenState extends State<TargetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Target Screen"),
      ),
      body: Center(
        child: InkWell(
          onTap: router.back,
          child: Container(
            width: 56,
            height: 32,
            color: Colors.blueGrey,
            child: const Text("Navigate back with AutoRoute"),
          ),
        ),
      ),
    );
  }
}
