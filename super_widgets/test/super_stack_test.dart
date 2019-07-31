import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_stack.dart';

void main() {
  testWidgets('SuperStack structure & default child value', (WidgetTester tester) async {
    final superStack = SuperStack();
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    // Should have 1 Stack inside SuperStack
    final stackFinder = find.byType(Stack);
    expect(stackFinder, findsOneWidget);

    final Stack _stack = tester.widget(stackFinder);
    expect(_stack.key, isNull);
    expect(_stack.alignment, equals(AlignmentDirectional.topStart));
    expect(_stack.fit, equals(StackFit.loose));
    expect(_stack.children, equals(<Widget>[]));
  });

  testWidgets('SuperStack full child value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superStack = SuperStack(
      alignment: AlignmentDirectional.bottomStart,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.pink,
      width: 300,
      height: 250,
      childKey: Key('SuperStack'),
      children: children,
      fit: StackFit.expand,
      textDirection: TextDirection.rtl,
      overflow: Overflow.visible,
      childAlignment: AlignmentDirectional.center,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    final Finder stackFinder = find.byType(Stack).first;
    final Stack stack = tester.widget(stackFinder);

    expect(stack.key, equals(Key('SuperStack')));
    expect(stack.alignment, equals(AlignmentDirectional.center));
    expect(stack.fit, equals(StackFit.expand));
    expect(stack.children, equals(children));
    expect(stack.textDirection, equals(TextDirection.rtl));
    expect(stack.overflow, equals(Overflow.visible));
  });
}
