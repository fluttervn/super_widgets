import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_stack.dart';

void main() {
  testWidgets('SuperStack structure & child value',
      (WidgetTester tester) async {
    final List<Widget> children = [];
    final superStack = SuperStack(children: children);
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    // Should have 1 Stack inside SuperStack
    final stackFinder = find.byType(Stack);
    expect(stackFinder, findsOneWidget);

    final Stack _stack = tester.widget(stackFinder);
    expect(_stack.alignment, equals(Alignment.topLeft));
    expect(_stack.fit, equals(StackFit.loose));
    expect(_stack.children, equals(children));
  });

  testWidgets('SuperStack full value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superStack = SuperStack(
      children: children,
      width: 300,
      height: 250,
      color: Colors.pink,
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      key: Key('SuperStack'),
      fit: StackFit.expand,
      childAlignment: Alignment.center,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    final Finder stackFinder = find.byType(Stack).first;
    final Stack _stack = tester.widget(stackFinder);

    expect(_stack.alignment, equals(Alignment.center));
    expect(_stack.fit, equals(StackFit.expand));
    expect(_stack.children, equals(children));
  });
}
