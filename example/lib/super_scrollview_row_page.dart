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
        buildItem(1),
        buildItem(2),
        buildItem(3),
        buildItem(4),
        buildItem(5),
        buildItem(6),
      ],
    );
  }

  Widget buildItem(int index) {
    return SuperColumn(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
      ),
      children: <Widget>[
        Text('Item $index', style: TextStyleBold()),
        Text('Description $index'),
      ],
    );
  }
}
