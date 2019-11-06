import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperListTile sample
class SuperListTilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperListTile'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    void onPress() {
      Fluttertoast.showToast(msg: 'action onPress');
    }

    void onLongPress() {
      Fluttertoast.showToast(msg: 'action onLongPress');
    }

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperListTile with margin=10, padding=10, color',
          widget: SuperListTile(
            color: Colors.grey.shade300,
            margin: EdgeInsets.all(10),
//            padding: EdgeInsets.all(20),
            contentPadding: EdgeInsets.all(10),
            leading: Icon(Icons.calendar_today),
            title: Text('FlutterVN event'),
            subtitle: Text('We\'ll have 2 talks in that event: State '
                'Management; and Thread & Isolate'),
            trailing: Icon(Icons.launch),
            onTap: onPress,
            onLongPress: onLongPress,
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
