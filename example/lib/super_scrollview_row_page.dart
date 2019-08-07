import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperScrollViewRow sample
class SuperScrollViewRowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperScrollViewRow'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    var textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 32);
    return SuperScrollViewRow(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Text('This', style: textStyle),
        Text('...', style: textStyle),
        Text('is', style: textStyle),
        Text('...', style: textStyle),
        Text('the', style: textStyle),
        Text('...', style: textStyle),
        Text('Super', style: textStyle),
        Text('...', style: textStyle),
        Text('ScrollView', style: textStyle),
        Text('...', style: textStyle),
        Text('Row', style: textStyle),
        Text('...', style: textStyle),
        Text('demo', style: textStyle),
      ],
    );
  }
}
