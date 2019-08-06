import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Center(
      child: SuperColumn(
        color: Colors.grey,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        width: 300,
        alignment: Alignment.centerRight,
        childKey: Key('SuperColumn'),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(color: Colors.red, height: 50),
          Container(color: Colors.green, height: 100),
          Container(color: Colors.blue, height: 75),
        ],
      ),
    );
  }
}
