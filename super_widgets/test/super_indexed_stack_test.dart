import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_indexed_stack.dart';

void main() {
  testWidgets('SuperIndexedStack structure', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superIndexedStack = SuperIndexedStack(children: children);
    await tester.pumpWidget(Directionality(
      child: superIndexedStack,
      textDirection: TextDirection.ltr,
    ));

    final superIndexedStackFinder = find.byWidget(superIndexedStack);
    expect(superIndexedStackFinder, findsOneWidget);

    // Container should be child of SuperIndexedStack
    final containerFinder = find.descendant(
      of: superIndexedStackFinder,
      matching: find.byType(Container),
    );
    expect(containerFinder, findsOneWidget);

    // IndexedStack should be child of Container
    final stackFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(IndexedStack),
    );
    expect(stackFinder, findsOneWidget);
    final IndexedStack _stack = tester.widget(stackFinder);
    expect(_stack.children, equals(children));
    expect(_stack.index, equals(0));

    // children should be in IndexedStack
    final childrenFinder = find.descendant(
      of: stackFinder,
      matching: find.byType(Text),
    );
    expect(childrenFinder, findsWidgets);
  });

  testWidgets('SuperIndexedStack internal implementation value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superIndexedStack = SuperIndexedStack(
      children: children,
      width: 300,
      height: 250,
      color: Colors.pink,
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      key: Key('SuperIndexedStack'),
      sizing: StackFit.expand,
      innerAlignment: Alignment.center,
      index: 1,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superIndexedStack,
      textDirection: TextDirection.ltr,
    ));

    final superIndexedStackFinder = find.byWidget(superIndexedStack);
    final containerFinder = find.descendant(
      of: superIndexedStackFinder,
      matching: find.byType(Container),
    );
    final stackFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(IndexedStack),
    );

    final SuperIndexedStack _superIndexedStack = tester.widget(superIndexedStackFinder);
    final Container _container = tester.widget(containerFinder);
    final IndexedStack _stack = tester.widget(stackFinder);

    // verify Container
    expect(_container.margin, EdgeInsets.all(5));
    expect(_container.padding, EdgeInsets.all(10));
    expect(_container.decoration, BoxDecoration(color: Colors.pink));
    expect(_container.alignment, equals(Alignment.bottomLeft));
    expect(_superIndexedStack.width, equals(300));
    expect(_superIndexedStack.height, equals(250));

    // verify IndexedStack
    expect(_stack.key, Key('SuperIndexedStack'));
    expect(_stack.alignment, equals(Alignment.center));
    expect(_stack.fit, equals(StackFit.expand));
    expect(_stack.children, equals(children));
    expect(_stack.index, equals(1));
  });

  testWidgets('SuperIndexedStack default value', (WidgetTester tester) async {
    final List<Widget> children = [];
    final superIndexedStack = SuperIndexedStack(children: children);
    await tester.pumpWidget(Container(child: superIndexedStack));

    final superIndexedStackFinder = find.byWidget(superIndexedStack);
    expect(superIndexedStackFinder, findsOneWidget);

    final SuperIndexedStack _superIndexedStack = tester.widget(superIndexedStackFinder);
    // Default value is null: margin, padding, key, decoration
    expect(_superIndexedStack.margin, null);
    expect(_superIndexedStack.padding, null);
    expect(_superIndexedStack.key, null);
    expect(_superIndexedStack.decoration, null);
    // Default alignment & innerAlignment is Alignment.
    expect(_superIndexedStack.alignment, equals(Alignment.topLeft));
    expect(_superIndexedStack.innerAlignment, equals(Alignment.topLeft));
    // Default sizing & StackFit.loose.
    expect(_superIndexedStack.sizing, equals(StackFit.loose));
    // Default width, height is double.infinity.
    expect(_superIndexedStack.width, equals(double.infinity));
    expect(_superIndexedStack.height, equals(double.infinity));
    // Children must be not null
    expect(_superIndexedStack.children, isNotNull);
    expect(_superIndexedStack.children, equals(children));
    expect(_superIndexedStack.index, equals(0));
  });

  testWidgets('SuperIndexedStack full value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
      Text('Text 3'),
    ];
    final superIndexedStack = SuperIndexedStack(
      children: children,
      width: 300,
      height: 250,
      color: Colors.pink,
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      key: Key('SuperIndexedStack'),
      sizing: StackFit.expand,
      innerAlignment: Alignment.center,
      index: 2,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superIndexedStack,
      textDirection: TextDirection.ltr,
    ));

    final superIndexedStackFinder = find.byWidget(superIndexedStack);
    expect(superIndexedStackFinder, findsOneWidget);

    final SuperIndexedStack _superIndexedStack = tester.widget(superIndexedStackFinder);
    expect(_superIndexedStack.margin, EdgeInsets.all(5));
    expect(_superIndexedStack.padding, EdgeInsets.all(10));
    expect(_superIndexedStack.key, Key('SuperIndexedStack'));
    expect(_superIndexedStack.decoration, BoxDecoration(color: Colors.pink));
    // Default alignment & innerAlignment is Alignment.
    expect(_superIndexedStack.alignment, equals(Alignment.bottomLeft));
    expect(_superIndexedStack.innerAlignment, equals(Alignment.center));
    expect(_superIndexedStack.sizing, equals(StackFit.expand));
    expect(_superIndexedStack.width, equals(300));
    expect(_superIndexedStack.height, equals(250));
    expect(_superIndexedStack.children, equals(children));
    expect(_superIndexedStack.index, equals(2));
  });
}
