import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperIndexedStack demo
class SuperIndexedStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperIndexedStack'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    var children = <Widget>[
      Container(
        width: 200,
        height: 200,
        color: Colors.red,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.green,
        margin: EdgeInsets.all(20),
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        margin: EdgeInsets.all(40),
      ),
    ];

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperIndexedStack with margin, padding & color',
          widget: SuperIndexedStack(
            index: 0,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.grey.shade300,
            children: children,
          ),
        ),
      ],
    );
  }

  List<Widget> _wrapInRow({String description, Widget widget}) {
    return [
      Text(description),
      SizedBox(height: 5),
      widget,
      SizedBox(height: 20),
    ];
  }
}
