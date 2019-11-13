import 'package:example/base/base_demo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperCard sample
class SuperCardPage extends BaseDemoPage {
  @override
  List<Widget> buildContent(BuildContext context) {
    return [
      buildExpansionTile(
        title: 'Width & height in non-flexible (Row, Column, '
            'Flex) widget',
        initiallyExpanded: true,
        children: _cardWidthAndHeight(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'Outer decoration',
        children: _cardOuterDecoration(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'Margin and padding',
        children: _cardMarginAndPadding(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'Alignment',
        children: _cardAlignment(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'onPress & onLongPress',
        children: _cardOnPress(context),
      ),
      Divider(),
    ];
  }

  List<Widget> _cardWidthAndHeight(BuildContext context) {
    return [
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'Default SuperCard',
        widget: SuperCard(
          elevation: 5,
          shape: shapeBorder,
          child: listTile,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'no width specified, height = 100',
        widget: SuperCard(
          elevation: 5,
          height: 100,
          shape: shapeBorder,
          child: listTile,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = infinity, height = 100',
        widget: SuperCard(
          elevation: 5,
          width: double.infinity,
          height: 100,
          shape: shapeBorder,
          child: listTile,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = 300, height = 100',
        widget: SuperCard(
          elevation: 5,
          width: 300,
          height: 100,
          shape: shapeBorder,
          child: listTile,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = 300, no height specified',
        widget: SuperCard(
          elevation: 5,
          width: 300,
          shape: shapeBorder,
          child: listTile,
        ),
      ),
    ];
  }

  List<Widget> _cardOuterDecoration(BuildContext context) {
    return [
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'Color',
        widget: SuperCard(
          elevation: 5,
          shape: shapeBorder,
          color: Colors.blue.shade200,
          child: listTileSmall,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'BoxDecoration',
        widget: SuperCard(
          elevation: 5,
          shape: shapeBorder,
          decoration: BoxDecoration(
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: listTileSmall,
        ),
      ),
    ];
  }

  List<Widget> _cardAlignment(BuildContext context) {
    return [
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'alignment = center => NOT WORK',
        widget: SuperCard(
          elevation: 5,
          width: 300,
          height: 70,
          alignment: Alignment.center,
          shape: shapeBorder,
          child: listTileSmall,
        ),
      ),
    ];
  }

  List<Widget> _cardMarginAndPadding(BuildContext context) {
    return [
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'Margin (between card vs. its parent) = 15',
        widget: SuperCard(
          elevation: 5,
          height: 100,
          margin: EdgeInsets.all(15),
          child: listTile,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'Padding (between Card vs. its content) = 15',
        widget: SuperCard(
          elevation: 5,
          height: 100,
          padding: EdgeInsets.all(15),
          child: listTile,
        ),
      ),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'Margin = 15, Padding = 5',
        widget: SuperCard(
          elevation: 5,
          height: 100,
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(5),
          child: listTile,
        ),
      ),
    ];
  }

  List<Widget> _cardOnPress(BuildContext context) {
    return [
      Divider(),
      SuperCard(
        elevation: 5,
        onPressed: () {
          Fluttertoast.showToast(msg: 'action onPress');
        },
        child: ListTile(
          title: Text('Press here'),
        ),
      ),
      Divider(),
      SuperCard(
        elevation: 5,
        onLongPressed: () {
          Fluttertoast.showToast(msg: 'action onLongPress');
        },
        child: ListTile(
          title: Text('Long-press here'),
        ),
      ),
      SizedBox(height: 5),
    ];
  }
}
