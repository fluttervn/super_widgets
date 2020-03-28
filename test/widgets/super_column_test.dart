import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:super_widgets/widgets/super_column.dart';

void main() {
  testWidgets('SuperColumn default value', (WidgetTester tester) async {
    final superColumn = SuperColumn();
    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: superColumn,
    ));

    // Should have 1 Column inside SuperColumn
    final columnFinder = find.byType(Column);
    expect(columnFinder, findsOneWidget);

    final Column column = tester.widget(columnFinder);
    expect(column.key, isNull);
    expect(column.children, equals(<Widget>[]));
    expect(column.mainAxisAlignment, equals(MainAxisAlignment.start));
    expect(column.mainAxisSize, equals(MainAxisSize.max));
    expect(column.crossAxisAlignment, equals(CrossAxisAlignment.center));
    expect(column.textDirection, isNull);
    expect(column.verticalDirection, equals(VerticalDirection.down));
    expect(column.textBaseline, isNull);
  });

  testWidgets('SuperColumn full value', (WidgetTester tester) async {
    final List<Widget> children = [
      Text('Text 1'),
      Text('Text 2'),
    ];
    final superColumn = SuperColumn(
      alignment: AlignmentDirectional.bottomStart,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.pink,
      width: 300,
      height: 250,
      childKey: Key('SuperColumn'),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      textBaseline: TextBaseline.alphabetic,
      children: children,
    );

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: superColumn,
    ));

    final Finder columnFinder = find.byType(Column).first;
    final Column column = tester.widget(columnFinder);

    expect(column.key, equals(Key('SuperColumn')));
    expect(column.children, equals(children));
    expect(column.mainAxisAlignment, equals(MainAxisAlignment.spaceAround));
    expect(column.mainAxisSize, equals(MainAxisSize.min));
    expect(column.crossAxisAlignment, equals(CrossAxisAlignment.stretch));
    expect(column.textDirection, equals(TextDirection.rtl));
    expect(column.verticalDirection, equals(VerticalDirection.up));
    expect(column.textBaseline, equals(TextBaseline.alphabetic));
  });
}
