import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperText demo
class SuperTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperText'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    return SuperColumn(
      color: Colors.grey[300],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SuperText(
          'SuperText',
          padding: EdgeInsets.all(10),
          color: Colors.green,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
        SuperText(
          'SuperText align=right',
          padding: EdgeInsets.all(2),
          width: double.infinity,
          alignment: AlignmentDirectional.centerEnd,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
        SuperText.rich(
          TextSpan(children: [
            TextSpan(text: 'Super '),
            TextSpan(
              text: 'Text Span',
              style: TextStyle(color: Colors.blue, fontSize: 24),
            ),
          ]),
          margin: EdgeInsets.all(5),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
          color: Colors.yellow,
        ),
      ],
    );
  }
}
