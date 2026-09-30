import 'package:flutter_test/flutter_test.dart';

import 'package:anime_verse/main.dart';

void main() {
  testWidgets('AnimeVerse app loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const AnimeVerseApp());

    expect(find.text('Welcome Back'), findsOneWidget);
  });
}
