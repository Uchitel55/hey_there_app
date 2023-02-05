import 'package:flutter_test/flutter_test.dart';
import 'package:hey_there_app/hey_there_app.dart';
import 'package:hey_there_app/resources/app_strings.dart';
import 'package:integration_test/integration_test.dart';

const List<double> _offsetLocations = [4, 8, 12, 24];

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'End-to-end app test',
    (WidgetTester tester) async {
      await tester.pumpWidget(const HeyThereApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      await tester.tap(find.text(AppStrings.heyThere));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.tapAt(Offset(_offsetLocations.first, _offsetLocations.last));
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.tapAt(Offset(_offsetLocations[1], _offsetLocations[2]));
      await tester.pumpAndSettle(const Duration(seconds: 1));
    },
  );
}
