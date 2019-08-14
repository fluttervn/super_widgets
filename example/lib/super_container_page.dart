import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperContainer sample
class SuperContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperContainer'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    final boxH = SizedBox(height: 10);
    final bgColor = Colors.yellowAccent;
    final double defaultH = 50;

    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        SuperContainer(
          color: bgColor,
          child: Text('No w or h specified'),
        ),
        boxH,
        SuperContainer(
          color: bgColor,
          height: defaultH,
          child: Text('h=$defaultH, w = not specified (default)'),
        ),
        boxH,
        Row(
          children: <Widget>[
            SuperContainer(
              color: bgColor,
              child: Text('h=$defaultH, expandedFlex = 1'),
              height: defaultH,
              expandFlex: 1,
            ),
          ],
        ),
        boxH,
        SuperContainer(
          color: bgColor,
          width: 200,
          height: defaultH,
          padding: EdgeInsets.all(10),
          child: Text('w=200, h=$defaultH, padding=10'),
        ),
        boxH,
        SuperContainer(
          color: bgColor,
          width: 200,
          height: defaultH,
          margin: EdgeInsets.all(20),
          child: Text('w=200, h=$defaultH, margin=20'),
        ),
        boxH,
        SuperContainer(
          color: bgColor,
          width: 200,
          height: defaultH,
          alignment: AlignmentDirectional.bottomEnd,
          child: Text('alignment=bottomEnd'),
        ),
        boxH,
        SuperContainer(
          color: bgColor,
          width: 200,
          height: defaultH,
          alignment: AlignmentDirectional.center,
          child: Text('alignment=center'),
        ),
        boxH,
      ],
    );
  }
}
