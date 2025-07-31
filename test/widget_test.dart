// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:restaurant_menu_app/main.dart';

void main() {
  testWidgets('Restaurant app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RestaurantMenuApp());

    // Verify that the app title is displayed
    expect(find.text('Restaurant Menu'), findsOneWidget);

    // Verify that the main content is loaded
    expect(find.text('Discover Our Menu'), findsOneWidget);
  });
}
