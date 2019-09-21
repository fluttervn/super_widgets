import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// TestContainerNoChild sample
class ContainerSizeScrollNoChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerSizeScrollNoChild'),
      ),
      body: buildBody(context),
    );
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

    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        /// NO CHILD: Width is Not specified
        Text('No child, w=not specified, h=not specified'),
        Container(color: bgColor),
        boxH,
        _error('No child, w=not specified, h=infinity => NOT WORK'),
//        Container(color: bgColor, height: infinity),
        boxH,
        Text('No child, w=not specified, h=$defaultH'),
        Container(color: bgColor, height: defaultH),
        boxH,

        /// NO CHILD: Width is Infinity
        Text('No child, w=infinity, h=not specified'),
        Container(color: bgColor, width: infinity),
        boxH,
        _error('No child, w=infinity, h=infinity => NOT WORK'),
//        Container(color: bgColor, width: infinity, height: infinity),
        boxH,
        Text('No child, w=infinity, h=$defaultH'),
        Container(color: bgColor, width: infinity, height: defaultH),
        boxH,

        /// NO CHILD: Width is 120
        Text('No child, w=120, h=not specified'),
        Container(color: bgColor, width: 120),
        boxH,
        _error('No child, w=120, h=infinity => NOT WORK'),
//        Container(color: bgColor, width: 120, height: infinity),
        boxH,
        Text('No child, w=120, h=$defaultH'),
        Container(color: bgColor, width: 120, height: defaultH),
        Text('Let scroll down'),
        SizedBox(height: 400),
        Text('End of scroll'),
      ],
    );
  }
}
