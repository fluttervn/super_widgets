import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_raised_button.dart';

void main() {
  testWidgets('SuperRaisedButton structure & default child value', (WidgetTester tester) async {
//    final VoidCallback onPressed = () {};
    final superRaisedButton = SuperRaisedButton();
    await tester.pumpWidget(Directionality(
      child: superRaisedButton,
      textDirection: TextDirection.ltr,
    ));

    // Should have 1 RaisedButton inside SuperRaisedButton
    final raisedButtonFinder = find.byType(RaisedButton);
    expect(raisedButtonFinder, findsOneWidget);

    final RaisedButton raisedButton = tester.widget(raisedButtonFinder);
    expect(raisedButton.key, isNull);
//    expect(raisedButton.onPressed, equals(onPressed));
    expect(raisedButton.child, equals(null));
  });

  testWidgets('SuperRaisedButton full child value', (WidgetTester tester) async {
    final Text text = Text(
      'SuperRaisedButton',
      style: TextStyle(color: Colors.blue, fontSize: 16),
    );
    final VoidCallback onPressed = () {};
    final superRaisedButton = SuperRaisedButton(
      alignment: AlignmentDirectional.bottomStart,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.pink,
      width: 300,
      height: 250,
      childKey: Key('SuperRaisedButton'),
      childText: text,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superRaisedButton,
      textDirection: TextDirection.ltr,
    ));

    final Finder raisedButtonFinder = find.byType(RaisedButton).first;
    final RaisedButton raisedButton = tester.widget(raisedButtonFinder);

    expect(raisedButton.key, equals(Key('SuperRaisedButton')));
    expect(raisedButton.child, equals(text));
//    expect(raisedButton.onPressed, equals(onPressed));
  });
}
