import 'package:example/base/base_demo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperContainer sample
class SuperContainerPage extends BaseDemoPage {
  @override
  List<Widget> buildContent(BuildContext context) {
    return [
      buildExpansionTile(
        title: 'Width & height in non-flexible (Row, Column, '
            'Flex) widget',
        initiallyExpanded: true,
        children: _containerSizeInNonFlexible(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'Alignment in non-flexible (Row, Column, Flex) widget',
        children: _containerAlignmentInNonFlexible(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'onPressed and onLongPressed',
        children: _containerOnPress(context),
      ),
      buildExpansionTile(
        title: 'Width & height in flexible (Row, Column, Flex) widget',
        children: _containerSizeInFlexible(context),
      ),
      Divider(),
      buildExpansionTile(
        title: 'Using flex in flexible (Row, Column, Flex) widget',
        children: _containerFlexInFlexible(context),
      ),
      Divider(),
    ];
  }

  List<Widget> _containerOnPress(BuildContext context) {
    return [
      Divider(),
      SuperContainer(
        margin: EdgeInsets.all(10),
        height: 40,
        alignment: Alignment.center,
        onPressed: showToastOnPress,
        child: Text('Press here'),
      ),
      Divider(),
      SuperContainer(
        margin: EdgeInsets.all(10),
        height: 40,
        alignment: Alignment.center,
        onLongPressed: () {
          Fluttertoast.showToast(msg: 'action onLongPressed');
        },
        child: Text('Long-press here'),
      ),
      Divider(),
    ];
  }

  List<Widget> _containerAlignmentInNonFlexible(BuildContext context) {
    return [
      Divider(),
      title('No size specified'),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerLeft align',
        widget: SuperContainer(
          color: mainBgColor,
          alignment: Alignment.centerLeft,
          child: childTextBox,
        ),
      ),
      Divider(),
      title('Infinity width, no height specified'),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          width: double.infinity,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerLeft align',
        widget: SuperContainer(
          color: mainBgColor,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: childTextBox,
        ),
      ),
      Divider(),
      title('Width = 300, no height specified'),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerLeft align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          alignment: Alignment.centerLeft,
          child: childTextBox,
        ),
      ),
      Divider(),
      title('Width = 300, height = 200'),
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'centerLeft align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.centerLeft,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'topLeft align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.topLeft,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'topCenter align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.topCenter,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'topRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.topRight,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'bottomLeft align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.bottomLeft,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'bottomCenter align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.bottomCenter,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'bottomRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          height: 200,
          alignment: Alignment.bottomRight,
          child: childTextBox,
        ),
      ),
    ];
  }

  List<Widget> _containerSizeInNonFlexible(BuildContext context) {
    return [
      Divider(),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'Default with just color, margin=10, padding=20',
        widget: SuperContainer(
          color: mainBgColor,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'infinity width',
        widget: SuperContainer(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'infinity height',
        widget: SuperContainer(
          height: double.infinity,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'infinity width & height',
        widget: SuperContainer(
          width: double.infinity,
          height: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = 250',
        widget: SuperContainer(
          width: 250,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'height = 150',
        widget: SuperContainer(
          height: 150,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = infinity, height = 150',
        widget: SuperContainer(
          width: double.infinity,
          height: 150,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = 250, height = infinity',
        widget: SuperContainer(
          height: double.infinity,
          width: 250,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = infinity, height = infinity',
        widget: SuperContainer(
          height: double.infinity,
          width: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
    ];
  }

  List<Widget> _containerSizeInFlexible(BuildContext context) {
    return [
      Divider(),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'Default with just color, margin=10, padding=20',
        widget: SuperContainer(
          color: mainBgColor,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'infinity width',
        widget: SuperContainer(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'infinity height',
        error: 'Cannot using infinity height for SuperContainer inside a '
            'parent with flexible height too',
        widget: SuperContainer(
          height: double.infinity,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'infinity width & height',
        error: 'Cannot using infinity height for SuperContainer inside a '
            'parent with flexible height too',
        widget: SuperContainer(
          width: double.infinity,
          height: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'width = 250',
        widget: SuperContainer(
          width: 250,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'height = 150',
        widget: SuperContainer(
          height: 150,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'width = infinity, height = 150',
        widget: SuperContainer(
          width: double.infinity,
          height: 150,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithFlexibleContent(
        context,
        description: 'width = 250, height = infinity',
        error: 'Cannot using infinity height for SuperContainer inside a '
            'parent with flexible height too',
        widget: SuperContainer(
          height: double.infinity,
          width: 250,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ...showEntryInBottomSheetWithNonFlexContent(
        context,
        description: 'width = infinity, height = infinity',
        widget: SuperContainer(
          height: double.infinity,
          width: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
    ];
  }

  List<Widget> _containerFlexInFlexible(BuildContext context) {
    return [
      Divider(),
      Text('flex = 1, no width, height = 40'),
      Row(
        children: <Widget>[
          SuperContainer(
            color: mainBgColor,
            height: 40,
            flex: 1,
            child: childTextBox,
          ),
        ],
      ),
      Divider(),
      Text('flex = 1 vs. flex = 1'),
      Row(
        children: <Widget>[
          SuperContainer(
            color: mainBgColor,
            height: 40,
            flex: 1,
            child: childTextBox,
          ),
          SizedBox(width: 10),
          SuperContainer(
            color: mainBgColor,
            height: 40,
            flex: 1,
            child: childTextBox,
          ),
        ],
      ),
      Divider(),
      Text('flex = 1 vs. flex = 2'),
      Row(
        children: <Widget>[
          SuperContainer(
            color: mainBgColor,
            height: 40,
            flex: 1,
            child: childTextBox,
          ),
          SizedBox(width: 10),
          SuperContainer(
            color: mainBgColor,
            height: 40,
            flex: 2,
            child: childTextBox,
          ),
        ],
      ),
    ];
  }
}
