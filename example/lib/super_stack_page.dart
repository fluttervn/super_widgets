import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperStack demo
class SuperStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperStack'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    var children = <Widget>[
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.red,
        margin: EdgeInsets.only(right: 40),
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.green,
        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
      ),
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.blue,
        margin: EdgeInsets.only(left: 40, top: 40),
      ),
    ];

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperStack with margin, padding & color',
          widget: SuperStack(
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
