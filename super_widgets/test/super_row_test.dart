import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/super_row.dart';

void main() {
  testWidgets('SuperRow structure', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superRow = SuperRow(children: children);
    await tester.pumpWidget(Directionality(
      child: superRow,
      textDirection: TextDirection.ltr,
    ));

    final superRowFinder = find.byWidget(superRow);
    expect(superRowFinder, findsOneWidget);

    // Container should be child of SuperRow
    final containerFinder = find.descendant(
      of: superRowFinder,
      matching: find.byType(Container),
    );
    expect(containerFinder, findsOneWidget);

    // Row should be child of Container
    final rowFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(Row),
    );
    expect(rowFinder, findsOneWidget);
    final Row _stack = tester.widget(rowFinder);
    expect(_stack.children, equals(children));

    // children should be in Row
    final childrenFinder = find.descendant(
      of: rowFinder,
      matching: find.byType(Text),
    );
    expect(childrenFinder, findsWidgets);
  });

  testWidgets('SuperRow internal implementation value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superRow = SuperRow(
      children: children,
      width: 300,
      height: 250,
      color: Colors.pink,
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      key: Key('SuperRow'),
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superRow,
      textDirection: TextDirection.ltr,
    ));

    final superRowFinder = find.byWidget(superRow);
    final containerFinder = find.descendant(
      of: superRowFinder,
      matching: find.byType(Container),
    );
    final rowFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(Row),
    );

    final SuperRow _superRow = tester.widget(superRowFinder);
    final Container _container = tester.widget(containerFinder);
    final Row _stack = tester.widget(rowFinder);

    // verify Container
    expect(_container.key, Key('SuperRow'));
    expect(_container.margin, EdgeInsets.all(5));
    expect(_container.padding, EdgeInsets.all(10));
    expect(_container.decoration, BoxDecoration(color: Colors.pink));
    expect(_container.alignment, equals(Alignment.bottomLeft));
    expect(_superRow.width, equals(300));
    expect(_superRow.height, equals(250));

    // verify Row
    expect(_stack.children, equals(children));
  });

  testWidgets('SuperRow default value', (WidgetTester tester) async {
    final List<Widget> children = [];
    final superRow = SuperRow(children: children);
    await tester.pumpWidget(Container(child: superRow));

    final superRowFinder = find.byWidget(superRow);
    expect(superRowFinder, findsOneWidget);

    final SuperRow _superRow = tester.widget(superRowFinder);
    // Default value is null: margin, padding, key, decoration
    expect(_superRow.margin, null);
    expect(_superRow.padding, null);
    expect(_superRow.key, null);
    expect(_superRow.decoration, null);
    expect(_superRow.constraints,
        BoxConstraints.expand(width: double.infinity, height: double.infinity));
    // Default alignment & innerAlignment is Alignment.
    expect(_superRow.alignment, equals(Alignment.topLeft));
    // Default width, height is double.infinity.
    expect(_superRow.width, equals(double.infinity));
    expect(_superRow.height, equals(double.infinity));
    // Children must be not null
    expect(_superRow.children, isNotNull);
    expect(_superRow.children, equals(children));
  });

  testWidgets('SuperRow full value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superRow = SuperRow(
      children: children,
      width: 300,
      height: 250,
      color: Colors.pink,
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      key: Key('SuperRow'),
    );
    // Since we don't choose MaterialApp as root, we must wrap child in a Directionality instead
    // https://stackoverflow.com/a/49689947/190309
    await tester.pumpWidget(Directionality(
      child: superRow,
      textDirection: TextDirection.ltr,
    ));

    final superRowFinder = find.byWidget(superRow);
    expect(superRowFinder, findsOneWidget);

    final SuperRow _superRow = tester.widget(superRowFinder);
    expect(_superRow.margin, EdgeInsets.all(5));
    expect(_superRow.padding, EdgeInsets.all(10));
    expect(_superRow.key, Key('SuperRow'));
    expect(_superRow.decoration, BoxDecoration(color: Colors.pink));
    expect(_superRow.constraints, BoxConstraints.tightFor(width: 300, height: 250));
    // Default alignment & innerAlignment is Alignment.
    expect(_superRow.alignment, equals(Alignment.bottomLeft));
    expect(_superRow.width, equals(300));
    expect(_superRow.height, equals(250));
    expect(_superRow.children, equals(children));
  });
}
