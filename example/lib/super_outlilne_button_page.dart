import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperOutlineButton sample
class SuperOutlineButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperOutlineButton'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    const child = Text('fluttervn/super_widgets');

    void onPressed() {
      Fluttertoast.showToast(msg: 'action onPressed');
    }

    void onLongPressed() {
      Fluttertoast.showToast(msg: 'action onLongPressed');
    }

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'Default OutlineButton',
          widget: OutlineButton(
            onPressed: onPressed,
            child: child,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperOutlineButton with h=50, onPressed, onLongPressed',
          widget: SuperOutlineButton(
            onPressed: onPressed,
            onLongPressed: onLongPressed,
            height: 50,
            textColor: Colors.indigo,
            child: child,
          ),
        ),
        ..._wrapInRow(
          description:
              'SuperOutlineButton with h=50, margin=10, childPadding=15',
          widget: SuperOutlineButton(
            onPressed: onPressed,
            margin: EdgeInsets.all(10),
            childPadding: EdgeInsets.all(15),
            height: 50,
            child: child,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperOutlineButton with infinity width',
          widget: SuperOutlineButton(
            onPressed: onPressed,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            child: child,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperOutlineButton with shape',
          widget: SuperOutlineButton(
            onPressed: onPressed,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: child,
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
