import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperContainer sample
class TestContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestContainer'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    final boxH = SizedBox(height: 10);
    final boxH2 = SizedBox(height: 20);
    final bgColor = Colors.yellowAccent;
    final double defaultH = 50;
    final infinity = double.infinity;
    final string = '... x xx xxx xxxx xxxxx ...';
    final Text text = Text(string);

    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        /*/// NO CHILD: Width is Not specified
        Text('No child, w=not specified, h=not specified'),
        Container(color: bgColor),
        boxH,
        Text('No child, w=not specified, h=infinity => NOT WORK'),
//        Container(color: bgColor, height: infinity),
        boxH,
        Text('No child, w=not specified, h=40'),
        Container(color: bgColor, height: 40),
        boxH,

        /// NO CHILD: Width is Infinity
        Text('No child, w=infinity, h=not specified'),
        Container(color: bgColor, width: infinity),
        boxH,
        Text('No child, w=infinity, h=infinity => NOT WORK'),
//        Container(color: bgColor, width: infinity, height: infinity),
        boxH,
        Text('No child, w=infinity, h=40'),
        Container(color: bgColor, width: infinity, height: 40),
        boxH,

        /// NO CHILD: Width is 120
        Text('No child, w=120, h=not specified'),
        Container(color: bgColor, width: 120),
        boxH,
        Text('No child, w=120, h=infinity => NOT WORK'),
//        Container(color: bgColor, width: 120, height: infinity),
        boxH,
        Text('No child, w=120, h=40'),
        Container(color: bgColor, width: 120, height: 40),
        boxH,*/

        /// WITH CHILD: Width is Not specified
        Text('With child, w=not specified, h=not specified'),
        Container(color: bgColor, child: text),
        boxH,
        Text('With child, w=not specified, h=infinity => NOT WORK'),
//        Container(color: bgColor, child: text, height: infinity),
        boxH,
        Text('With child, w=not specified, h=40'),
        Container(color: bgColor, child: text, height: 40),
        boxH,

        /// WITH CHILD: Width is Infinity
        Text('With child, w=infinity, h=not specified'),
        Container(color: bgColor, child: text, width: infinity),
        boxH,
        Text('With child, w=infinity, h=infinity => NOT WORK'),
        /*Container(
          color: bgColor,
          child: text,
          width: infinity,
          height: infinity,
        ),*/
        boxH,
        Text('With child, w=infinity, h=40'),
        Container(color: bgColor, child: text, width: infinity, height: 40),
        boxH,

        /// WITH CHILD: Width is fixed 120
        Text('With child, w=120, h=not specified'),
        Container(color: bgColor, child: text, width: 120),
        boxH,
        Text('With child, w=120, h=infinity => NOT WORK'),
//        Container(color: bgColor, child: text, width: 120, height: infinity),
        boxH,
        Text('With child, w=120, h=40'),
        Container(color: bgColor, child: text, width: 120, height: 40),
        boxH,
      ],
    );
  }
}
