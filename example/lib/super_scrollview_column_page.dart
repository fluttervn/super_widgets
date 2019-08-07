import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperScrollViewColumn sample
class SuperScrollViewColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperScrollViewColumn'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    var textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 32);
    return SuperScrollViewColumn(
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
        Text('Column', style: textStyle),
        Text('...', style: textStyle),
        Text('demo', style: textStyle),
        Text('...', style: textStyle),
        Text('for', style: textStyle),
        Text('...', style: textStyle),
        Text('Flutter', style: textStyle),
        Text('...', style: textStyle),
        Text('...', style: textStyle),
        Text('copyright', style: textStyle),
        Text('...', style: textStyle),
        Text('by', style: textStyle),
        Text('...', style: textStyle),
        Text('https://fluttervn.com', style: textStyle),
      ],
    );
  }
}
