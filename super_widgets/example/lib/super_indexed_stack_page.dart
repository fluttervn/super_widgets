import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

class SuperIndexedStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperIndexedStack'),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: SuperIndexedStack(
        color: Colors.grey,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(right: 20),
        index: 2,
        children: <Widget>[
          Container(color: Colors.yellow, width: 300, height: 100),
          Container(
            color: Colors.red,
            width: 100,
            height: 300,
            margin: EdgeInsets.only(left: 50),
          ),
          Container(
            color: Colors.blue,
            width: 200,
            height: 300,
            margin: EdgeInsets.only(right: 40, top: 30),
          ),
        ],
      ),
    );
  }
}
