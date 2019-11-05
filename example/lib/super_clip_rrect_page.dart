import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperClipRRect sample
class SuperClipRRectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperClipRRect'),
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
          description: 'SuperCircleAvatar with border=15, margin=20, and '
              'onPressed, onLongPressed',
          widget: SuperClipRRect(
            margin: EdgeInsets.all(20),
            borderRadius: BorderRadius.circular(40),
            onPressed: () {
              Fluttertoast.showToast(msg: 'Action: onPressed');
            },
            onLongPressed: () {
              Fluttertoast.showToast(msg: 'Action: onLongPressed');
            },
            child: Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
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
