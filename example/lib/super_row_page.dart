import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperRow sample
class SuperRowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperRow'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    const children = <Widget>[
      Icon(Icons.code),
      SizedBox(width: 10),
      Text('fluttervn/super_widgets', style: TextStyleBold()),
    ];

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperRow with margin=10, padding=10, color, '
              'crossAxisAlignment=left',
          widget: SuperRow(
            crossAxisAlignment: CrossAxisAlignment.start,
            color: Colors.grey.shade300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            children: children,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperRow with margin=10, padding=10, color, '
              'crossAxisAlignment=center',
          widget: SuperRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            color: Colors.grey.shade300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            children: children,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperRow with onPressed & onLongPressed',
          widget: SuperRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            color: Colors.grey.shade300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Action: onPressed');
            },
            onLongPressed: () {
              Fluttertoast.showToast(msg: 'Action: onLongPressed');
            },
            children: children,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperRow with width = 250, height = 100, decoration',
          widget: SuperRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            width: 250,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue.shade200,
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
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
