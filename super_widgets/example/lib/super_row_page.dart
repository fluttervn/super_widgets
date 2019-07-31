import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

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

  Widget buildBody(BuildContext context) {
    return Center(
      child: SuperRow(
        color: Colors.grey,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        height: 300,
        alignment: Alignment.centerRight,
        childKey: Key('SuperRow'),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(color: Colors.red, width: 50),
          Container(color: Colors.green, width: 100),
          Container(color: Colors.blue, width: 75),
        ],
      ),
    );
  }
}
