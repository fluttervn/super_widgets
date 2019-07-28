import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

class SuperStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperStack'),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: SuperStack(
        color: Colors.blueAccent,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(right: 20),
        innerAlignment: Alignment.bottomCenter,
        alignment: Alignment.centerRight,
        fit: StackFit.loose,
        children: <Widget>[
          Container(color: Colors.red, width: 200, height: 200),
          Container(color: Colors.green, width: 100, height: 100),
          Text('SuperStack demo'),
        ],
      ),
    );
  }
}
