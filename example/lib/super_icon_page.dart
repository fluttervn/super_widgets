import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperIcon sample
class SuperIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperIcon'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperIcon with w & h & color',
          widget: SuperIcon(
            Icons.group,
            size: 30,
            width: 60,
            height: 60,
            color: Colors.grey.shade300,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperIcon with w & h & decoration',
          widget: SuperIcon(
            Icons.group,
            size: 30,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        ..._wrapInRow(
          description: 'SuperIcon with margin & padding',
          widget: SuperIcon(
            Icons.group,
            size: 30,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(35),
            ),
          ),
        ),
        ..._wrapInRow(
          description: 'SuperIcon with onPressed, onLongPressed',
          widget: SuperIcon(
            Icons.group,
            size: 30,
            padding: EdgeInsets.all(20),
            onPressed: () {
              Fluttertoast.showToast(msg: 'action onPressed');
            },
            onLongPressed: () {
              Fluttertoast.showToast(msg: 'action onLongPressed');
            },
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(35),
            ),
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
