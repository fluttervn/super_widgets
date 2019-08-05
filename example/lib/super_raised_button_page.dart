import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

class SuperRaisedButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperRaisedButton'),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: SuperRaisedButton(
        color: Colors.grey[200],
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: 200,
        height: 60,
        alignment: Alignment.centerRight,
        childKey: Key('SuperRaisedButton'),
        onPressed: () {
          print('Touch on SuperRaisedButton');
        },
        childText: Text(
          'Support us!',
          style: TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
