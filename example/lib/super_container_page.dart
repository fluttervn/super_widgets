import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperContainer sample
class SuperContainerPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: _scaffoldKey,
        title: Text('SuperContainer'),
      ),
      body: buildBody(context),
    );
  }

  final Color mainBgColor = Colors.grey.shade400;

  final Text childTextBox = Text(
    'child of Super *',
    style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.yellow,
    ),
  );

  Text header(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 24),
    );
  }

  Text title(String text) {
    return Text(
      text,
      style: TextStyleBold(fontSize: 20),
    );
  }

  List<Widget> _containerAlignmentInNonFlexible(BuildContext context) {
    return [
      Divider(),
      title('No size specified'),
      Divider(),
      ..._wrapInRow(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
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
      ..._wrapInRow(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          width: double.infinity,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
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
      ..._wrapInRow(
        context,
        description: 'centerRight align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          alignment: Alignment.centerRight,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'center align',
        widget: SuperContainer(
          color: mainBgColor,
          width: 300,
          alignment: Alignment.center,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
        context,
        description: 'Default with just color, margin=10, padding=20',
        widget: SuperContainer(
          color: mainBgColor,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'infinity width',
        widget: SuperContainer(
          width: double.infinity,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'infinity height',
        error: 'Cannot create a SuperContainer with infinity height inside a '
            'perent widget with infinity height too.',
        widget: SuperContainer(
          height: double.infinity,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'infinity width & height',
        error: 'Cannot create a SuperContainer with infinity height inside a '
            'perent widget with infinity height too.',
        widget: SuperContainer(
          width: double.infinity,
          height: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'width = 250',
        widget: SuperContainer(
          width: 250,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'height = 150',
        widget: SuperContainer(
          height: 150,
          padding: EdgeInsets.all(5),
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
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
      ..._wrapInRow(
        context,
        description: 'width = 250, height = infinity',
        error: 'Cannot create a SuperContainer with infinity height inside a '
            'perent widget with infinity height too.',
        widget: SuperContainer(
          height: double.infinity,
          width: 250,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'width = infinity, height = infinity',
        error: 'Cannot create a SuperContainer with infinity height inside a '
            'perent widget with infinity height too.',
        widget: SuperContainer(
          height: double.infinity,
          width: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
    ];
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: header('Width & height in non-flexible (Row, Column, '
              'Flex) widget'),
          initiallyExpanded: true,
          children: _containerSizeInNonFlexible(context),
        ),
        Divider(),
        ExpansionTile(
          title: header('Alignment in non-flexible (Row, Column, Flex) widget'),
          children: _containerAlignmentInNonFlexible(context),
        ),
      ],
    );
  }

  List<Widget> _wrapInRow(
    BuildContext context, {
    String description,
    Widget widget,
    String error = '',
  }) {
    return [
      ListTile(
        title: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          if (error != null && error.isNotEmpty) {
            Fluttertoast.showToast(msg: error, toastLength: Toast.LENGTH_LONG);
            return;
          }
          showModalBottomSheet(
            context: _scaffoldKey.currentContext,
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(description, maxLines: 2),
              ),
              body: SuperScrollViewContainer(
                padding: EdgeInsets.all(5),
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Top of item'),
                    SizedBox(height: 5),
                    widget,
                    SizedBox(height: 5),
                    Text('Bottom of item'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      Divider(),
    ];
  }
}
