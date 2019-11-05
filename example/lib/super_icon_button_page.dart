import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperIconButton sample
class SuperIconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperIconButton'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    void onPressed() {
      Fluttertoast.showToast(msg: 'action onPressed');
    }

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'Default IconButton',
          widget: IconButton(
            icon: Icon(Icons.group),
            iconSize: 24,
            onPressed: onPressed,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperIconButton with margin=30',
          widget: SuperIconButton(
            icon: Icon(Icons.group),
            iconSize: 24,
            onPressed: onPressed,
            margin: EdgeInsets.all(30),
          ),
        ),
        ..._wrapInRow(
          description: 'SuperIconButton with onLongPressed',
          widget: SuperIconButton(
            icon: Icon(Icons.group),
            iconSize: 24,
            onPressed: onPressed,
            onLongPressed: () {
              Fluttertoast.showToast(msg: 'action onLongPressed');
            },
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
