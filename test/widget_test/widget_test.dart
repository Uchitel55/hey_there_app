import 'package:flutter_test/flutter_test.dart';
import 'package:hey_there_app/hey_there_app.dart';
import 'package:hey_there_app/resources/app_strings.dart';

void main() {
  testWidgets('Hey There text entered proprely', (WidgetTester tester) async {
    await tester.pumpWidget(const HeyThereApp());

    expect(find.text(AppStrings.heyThere), findsOneWidget);
    expect(find.text('There Hey'), findsNothing);
  });
}
