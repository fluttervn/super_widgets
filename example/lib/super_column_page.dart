import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperColumn sample
class SuperColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperColumn'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    const children = <Widget>[
      Text('fluttervn/super_widgets', style: TextStyleBold()),
      Text('Combining multiple Flutter widgets into a single widget'),
    ];

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperColumn with margin=10, padding=10, color, '
              'crossAxisAlignment=left',
          widget: SuperColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            color: Colors.grey.shade300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            children: children,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperColumn with margin=10, padding=10, color, '
              'crossAxisAlignment=center',
          widget: SuperColumn(
            crossAxisAlignment: CrossAxisAlignment.center,
            color: Colors.grey.shade300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            children: children,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperColumn with onPressed & onLongPressed',
          widget: SuperColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          description: 'SuperColumn with width = 250, height = 100, decoration',
          widget: SuperColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
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
