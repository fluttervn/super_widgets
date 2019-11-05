import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperInkWell sample
class SuperInkWellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperInkWell'),
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
          description: 'SuperInkWell with margin=10, padding=15',
          widget: SuperInkWell(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            child: Text('Open Chrome'),
          ),
        ),
        ..._wrapInRow(
          description: 'SuperInkWell with onTap, onLongPress',
          widget: SuperInkWell(
            margin: EdgeInsets.all(10),
            onTap: onPressed,
            onLongPress: () {
              Fluttertoast.showToast(msg: 'action onLongPress');
            },
            child: Text('Open Chrome'),
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
