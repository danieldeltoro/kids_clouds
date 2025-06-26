import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kids_clouds/screens/daily_agenda_screen.dart';

void main() {
  testWidgets('Titulo Agenda diaria', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: DailyAgendaScreen(),
        ),
      ),
    );

    expect(find.text('Agenda diaria'), findsOneWidget);
  });
}
