import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// TestContainerNoScroll sample
class ContainerSizeChildNoScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerSizeChildNoScroll'),
      ),
      body: buildBody(context),
    );
  }

  Container _buildContainer(
      Color color, Widget child, double width, double height) {
    return Container(color: color, child: child, width: width, height: height);
  }

  Text _error(String error) {
    return Text(error, style: TextStyle(color: Colors.red));
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    final boxH = SizedBox(height: 10);
    final bgColor = Colors.yellowAccent;
    final double defaultH = 50;
    final infinity = double.infinity;
    final string = '... x xx xxx xxxx xxxxx ...';
    final Text text = Text(string);

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// WITH CHILD: Width is Not specified
          Text('With child, w=not specified, h=not specified'),
          Container(color: bgColor, child: text),
          boxH,
          _error('With child, w=not specified, h=infinity => NOT WORK'),
//          Container(color: bgColor, child: text, height: infinity),
          boxH,
          Text('With child, w=not specified, h=$defaultH'),
          Container(color: bgColor, child: text, height: defaultH),
          boxH,

          /// WITH CHILD: Width is Infinity
          Text('With child, w=infinity, h=not specified'),
          Container(color: bgColor, child: text, width: infinity),
          boxH,
          _error('With child, w=infinity, h=infinity => NOT WORK'),
          /*_buildContainer(bgColor, text, infinity, infinity),*/
          boxH,
          Text('With child, w=infinity, h=$defaultH'),
//          _buildContainer(bgColor, text, infinity, defaultH),
          boxH,

          /// WITH CHILD: Width is fixed 120
          Text('With child, w=120, h=not specified'),
          Container(color: bgColor, child: text, width: 120),
          boxH,
          _error('With child, w=120, h=infinity => NOT WORK'),
//        _buildContainer(bgColor, text, 120, infinity),
          boxH,
          Text('With child, w=120, h=$defaultH'),
          _buildContainer(bgColor, text, 120, defaultH),
          boxH,
        ],
      ),
    );
  }
}
