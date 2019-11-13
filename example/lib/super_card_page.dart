import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperCard sample
class SuperCardPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final Color mainBgColor = Colors.grey.shade400;

  final Text childTextBox = Text(
    'child of Super *',
    style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.yellow,
    ),
  );

  final ListTile listTile = ListTile(
    leading: Icon(Icons.message),
    title: Text('fluttervn/super_widgets'),
    subtitle: Text('Combine multiple widgets into single one'),
  );

  final ListTile listTileSmall = ListTile(
    leading: Icon(Icons.message),
    title: Text('fluttervn/super_widgets'),
    subtitle: Text('Github.com'),
  );

  final ShapeBorder shapeBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: _scaffoldKey,
        title: Text('SuperCard'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ExpansionTile(
          title: header('Width & height in non-flexible (Row, Column, '
              'Flex) widget'),
          initiallyExpanded: true,
          children: _cardWidthAndHeight(context),
        ),
        Divider(),
        ExpansionTile(
          title: header('Outer decoration'),
          children: _cardOuterDecoration(context),
        ),
        Divider(),
        ExpansionTile(
          title: header('Margin and padding'),
          children: _cardMarginAndPadding(context),
        ),
        Divider(),
        ExpansionTile(
          title: header('Alignment'),
          children: _cardAlignment(context),
        ),
        Divider(),
        ExpansionTile(
          title: header('onPress & onLongPress'),
          children: _cardOnPress(context),
        ),
        Divider(),
      ],
    );
  }

  List<Widget> _cardWidthAndHeight(BuildContext context) {
    return [
      Divider(),
      ..._wrapInRow(
        context,
        description: 'Default SuperCard',
        widget: SuperCard(
          elevation: 5,
          shape: shapeBorder,
          child: listTile,
        ),
      ),
      Divider(),
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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
      ..._wrapInRow(
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

  List<Widget> _wrapInRow(
    BuildContext context, {
    String description,
    Widget widget,
  }) {
    return [
      ListTile(
        title: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          showModalBottomSheet(
            context: _scaffoldKey.currentContext,
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(description, maxLines: 2),
              ),
              body: SuperScrollViewContainer(
                padding: EdgeInsets.all(5),
                height: 300,
                child: Stack(
                  children: <Widget>[
                    widget,
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
