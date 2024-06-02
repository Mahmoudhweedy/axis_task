// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:axis_task/features/actors/presentation/screens/actor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Download button testing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ActorsListView());

    expect(find.byElementType(ListTile), findsOneWidget);

    await tester.pumpWidget(const ListTile());
    await tester.pump();

    expect(find.text("Jennifer Connelly"), findsOneWidget);
    expect(find.byIcon(Icons.download), findsNothing);
  });
}
