import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    'yellow is child of SuperContainer',
    style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.yellow,
    ),
  );

  List<Widget> _containerAlignmentInNonFlexible(BuildContext context) {
    return [
      Divider(),
      ..._wrapInRow(
        context,
        description: 'centerRight align with no size',
        widget: SuperContainer(
          color: mainBgColor,
          width: double.infinity,
          alignment: Alignment.centerRight,
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
          padding: EdgeInsets.all(20),
          child: childTextBox,
        ),
      ),
      Divider(),
      ..._wrapInRow(
        context,
        description: 'Default with just color, margin=10, padding=20',
        widget: SuperContainer(
          color: mainBgColor,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'infinity width',
        widget: SuperContainer(
          width: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'infinity height',
        widget: SuperContainer(
          height: double.infinity,
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'infinity width & height',
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
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'height = 150',
        widget: SuperContainer(
          height: 150,
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
          color: mainBgColor,
          child: childTextBox,
        ),
      ),
      ..._wrapInRow(
        context,
        description: 'width = 250, height = infinity',
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
    Text header(String text) {
      return Text(
        text,
        style: Theme.of(context).textTheme.headline,
      );
    }

    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ExpansionTile(
          title: header('Width & height in non-flexible (Row, Column, '
              'Flex) widget'),
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

  List<Widget> _wrapInRow(BuildContext context,
      {String description, Widget widget}) {
    return [
      ListTile(
        title: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => showModalBottomSheet(
          context: _scaffoldKey.currentContext,
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(description, maxLines: 2),
            ),
            body: SuperScrollViewContainer(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                height: 300,
                child: widget,
              ),
            ),
          ),
        ),
      ),
      Divider(),
    ];
  }
}
