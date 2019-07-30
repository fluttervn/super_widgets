import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_stack.dart';

void main() {
  testWidgets('SuperStack structure', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superStack = SuperStack(children: children);
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    final superStackFinder = find.byWidget(superStack);
    expect(superStackFinder, findsOneWidget);

    // Container should be child of SuperStack
    final containerFinder = find.descendant(
      of: superStackFinder,
      matching: find.byType(Container),
    );
    expect(containerFinder, findsOneWidget);

    // Stack should be child of Container
    final stackFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(Stack),
    );
    expect(stackFinder, findsOneWidget);
    final Stack _stack = tester.widget(stackFinder);
    expect(_stack.children, equals(children));

    // children should be in Stack
    final childrenFinder = find.descendant(
      of: stackFinder,
      matching: find.byType(Text),
    );
    expect(childrenFinder, findsWidgets);
  });

  testWidgets('SuperStack internal implementation value', (WidgetTester tester) async {
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
      innerAlignment: Alignment.center,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    final superStackFinder = find.byWidget(superStack);
    final containerFinder = find.descendant(
      of: superStackFinder,
      matching: find.byType(Container),
    );
    final stackFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(Stack),
    );

    final SuperStack _superStack = tester.widget(superStackFinder);
    final Container _container = tester.widget(containerFinder);
    final Stack _stack = tester.widget(stackFinder);

    // verify Container
    expect(_container.margin, EdgeInsets.all(5));
    expect(_container.padding, EdgeInsets.all(10));
    expect(_container.decoration, BoxDecoration(color: Colors.pink));
    expect(_container.alignment, equals(Alignment.bottomLeft));
    expect(_superStack.width, equals(300));
    expect(_superStack.height, equals(250));

    // verify Stack
    expect(_stack.key, Key('SuperStack'));
    expect(_stack.alignment, equals(Alignment.center));
    expect(_stack.fit, equals(StackFit.expand));
    expect(_stack.children, equals(children));
  });

  testWidgets('SuperStack default value', (WidgetTester tester) async {
    final List<Widget> children = [];
    final superStack = SuperStack(children: children);
    await tester.pumpWidget(Container(child: superStack));

    final superStackFinder = find.byWidget(superStack);
    expect(superStackFinder, findsOneWidget);

    final SuperStack _superStack = tester.widget(superStackFinder);
    // Default value is null: margin, padding, key, decoration
    expect(_superStack.margin, null);
    expect(_superStack.padding, null);
    expect(_superStack.key, null);
    expect(_superStack.decoration, null);
    expect(_superStack.constraints,
        BoxConstraints.expand(width: double.infinity, height: double.infinity));
    // Default alignment & innerAlignment is Alignment.
    expect(_superStack.alignment, equals(Alignment.topLeft));
    expect(_superStack.innerAlignment, equals(Alignment.topLeft));
    // Default fit & StackFit.loose.
    expect(_superStack.fit, equals(StackFit.loose));
    // Default width, height is double.infinity.
    expect(_superStack.width, equals(double.infinity));
    expect(_superStack.height, equals(double.infinity));
    // Children must be not null
    expect(_superStack.children, isNotNull);
    expect(_superStack.children, equals(children));
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
      innerAlignment: Alignment.center,
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superStack,
      textDirection: TextDirection.ltr,
    ));

    final superStackFinder = find.byWidget(superStack);
    expect(superStackFinder, findsOneWidget);

    final SuperStack _superStack = tester.widget(superStackFinder);
    expect(_superStack.margin, EdgeInsets.all(5));
    expect(_superStack.padding, EdgeInsets.all(10));
    expect(_superStack.key, Key('SuperStack'));
    expect(_superStack.decoration, BoxDecoration(color: Colors.pink));
    expect(_superStack.constraints, BoxConstraints.tightFor(width: 300, height: 250));
    // Default alignment & innerAlignment is Alignment.
    expect(_superStack.alignment, equals(Alignment.bottomLeft));
    expect(_superStack.innerAlignment, equals(Alignment.center));
    expect(_superStack.fit, equals(StackFit.expand));
    expect(_superStack.width, equals(300));
    expect(_superStack.height, equals(250));
    expect(_superStack.children, equals(children));
  });
}
