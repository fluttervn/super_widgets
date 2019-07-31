import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_indexed_stack.dart';

void main() {
  testWidgets('SuperIndexedStack structure & default child value', (WidgetTester tester) async {
    final superIndexedStack = SuperIndexedStack();
    await tester.pumpWidget(Directionality(
      child: superIndexedStack,
      textDirection: TextDirection.ltr,
    ));

    // Should have 1 IndexedStack inside SuperIndexedStack
    final indexedStackFinder = find.byType(IndexedStack);
    expect(indexedStackFinder, findsOneWidget);

    final IndexedStack indexedStack = tester.widget(indexedStackFinder);
    expect(indexedStack.alignment, equals(AlignmentDirectional.topStart));
    expect(indexedStack.fit, equals(StackFit.loose));
    expect(indexedStack.children, equals(<Widget>[]));
    expect(indexedStack.overflow, equals(Overflow.clip));
    expect(indexedStack.index, equals(0));
    expect(indexedStack.key, isNull);
  });

  testWidgets('SuperIndexedStack full child value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superIndexedStack = SuperIndexedStack(
      alignment: AlignmentDirectional.bottomStart,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.pink,
      width: 300,
      height: 250,
      childKey: Key('SuperIndexedStack'),
      children: children,
      sizing: StackFit.expand,
      textDirection: TextDirection.rtl,
      childAlignment: AlignmentDirectional.center,
      index: 1,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superIndexedStack,
      textDirection: TextDirection.ltr,
    ));

    final Finder indexedStackFinder = find.byType(IndexedStack).first;
    final IndexedStack indexedStack = tester.widget(indexedStackFinder);

    expect(indexedStack.key, equals(Key('SuperIndexedStack')));
    expect(indexedStack.alignment, equals(AlignmentDirectional.center));
    expect(indexedStack.fit, equals(StackFit.expand));
    expect(indexedStack.children, equals(children));
    expect(indexedStack.textDirection, equals(TextDirection.rtl));
    expect(indexedStack.index, equals(1));
    expect(indexedStack.overflow, equals(Overflow.clip));
  });
}
