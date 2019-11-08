import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperContainer sample
class SuperContainerFlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperContainer dynamicSize'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    final boxH = SizedBox(height: 10);
    const Color bgColor = Colors.yellowAccent;

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Below is:flex=full, no width, no height'),
        Text('Will implement later'),
        /*_wrapInContainer(
          SuperContainer(
            color: bgColor,
            flex: 1,
            child: Text('SuperContent:dynamicSize=full, no width, no height'),
          ),
        ),*/
        boxH,
      ],
    );
  }

  Widget _wrapInContainer(Widget child) {
    return Container(
      color: Colors.greenAccent,
      width: double.infinity,
      height: 70,
      child: child,
    );
  }
}
