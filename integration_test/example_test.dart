import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:testing_issue/main.dart';
import 'package:testing_issue/screens/home_screen.dart';
import 'package:testing_issue/screens/login_screen.dart';
import 'package:testing_issue/screens/main_screen.dart';
import 'package:testing_issue/screens/otp_screen.dart';
import 'package:testing_issue/screens/target_screen.dart';

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    ($) async {
      // Replace later with your app's main widget
      await $.pumpWidgetAndSettle(const MyApp());
      await $(LoginScreen).waitUntilVisible();
      await $(ElevatedButton).tap();
      await $(OtpScreen).waitUntilVisible();
      await $(ElevatedButton).tap();

      await $.pumpAndTrySettle();

      await $(MainScreen).waitUntilVisible();
      expect($('0'), findsOneWidget);
      await $(#_COUNTER_).tap();
      await $.pumpAndTrySettle();
      await $(TargetScreen).waitUntilVisible();
      await $.native.tap(Selector(contentDescription: "Navigate back with AutoRoute"));
      await $.pumpAndTrySettle();
      await $(HomeScreen).waitUntilVisible();
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      expect($('3'), findsOneWidget);
    },
  );
}
