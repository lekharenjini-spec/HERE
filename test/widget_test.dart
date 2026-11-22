 
 import 'package:flutter_test/flutter_test.dart';
 import 'package:here/main.dart';

void main() {
  testWidgets('HERE website loads successfully', (tester) async {
    await tester.pumpWidget(const HereWebsite());

    expect(find.text('HERE'), findsOneWidget);
  });
}
