import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:testing_issue/main.dart';

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    ($) async {
      // Replace later with your app's main widget
      await $.pumpWidgetAndSettle(const MyApp());

      expect($('0'), findsOneWidget);
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      await $(FloatingActionButton).tap();
      expect($('3'), findsOneWidget);
      if (!Platform.isMacOS) {
        await $.native.pressHome();
      }
    },
  );
}
