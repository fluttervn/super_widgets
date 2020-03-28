import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/widgets/super_raised_button.dart';

void main() {
  testWidgets('SuperRaisedButton default value', (WidgetTester tester) async {
//    final VoidCallback onPressed = () {};
    final superRaisedButton = SuperRaisedButton();
    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: superRaisedButton,
    ));

    // Should have 1 RaisedButton inside SuperRaisedButton
    final raisedButtonFinder = find.byType(RaisedButton);
    expect(raisedButtonFinder, findsOneWidget);

    final RaisedButton raisedButton = tester.widget(raisedButtonFinder);
    expect(raisedButton.key, isNull);
//    expect(raisedButton.onPressed, equals(onPressed));
    expect(raisedButton.child, equals(null));
  });

  testWidgets('SuperRaisedButton full value', (WidgetTester tester) async {
    final Text text = Text(
      'SuperRaisedButton',
      style: TextStyle(color: Colors.blue, fontSize: 16),
    );
    final superRaisedButton = SuperRaisedButton(
      alignment: AlignmentDirectional.bottomStart,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.pink,
      width: 300,
      height: 250,
      childKey: Key('SuperRaisedButton'),
      child: text,
    );

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: superRaisedButton,
    ));

    final Finder raisedButtonFinder = find.byType(RaisedButton).first;
    final RaisedButton raisedButton = tester.widget(raisedButtonFinder);

    expect(raisedButton.key, equals(Key('SuperRaisedButton')));
    expect(raisedButton.child, equals(text));
//    expect(raisedButton.onPressed, equals(onPressed));
  });
}
