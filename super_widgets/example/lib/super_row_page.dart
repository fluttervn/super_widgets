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
        color: Colors.blueAccent,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(right: 20),
        height: 300,
        innerAlignment: Alignment.bottomCenter,
        alignment: Alignment.centerRight,
        children: <Widget>[
          Text('Row 1'),
          Container(color: Colors.red, width: 100),
          Text('Row 2'),
          Container(color: Colors.green, width: 100),
          Container(color: Colors.blue, width: 100),
        ],
      ),
    );
  }
}
