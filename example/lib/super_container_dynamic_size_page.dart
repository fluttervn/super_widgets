import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperContainer sample
class SuperContainerDynamicSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperContainer dynamicSize'),
      ),
      body: buildBody(context),
    );
  }

  final double _defaultH = 50;

  /// Content of this page
  Widget buildBody(BuildContext context) {
    final boxH = SizedBox(height: 10);
    final Color bgColor = Colors.yellowAccent;

    return SuperScrollViewColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('Below is:no dynamicSize, no with, no height'),
        _wrapInContainer(
          SuperContainer(
            color: bgColor,
            child: Text('SuperContent:no dynamicSize, no with, no height'),
          ),
        ),
        boxH,
        Text('Below is:dynamicSize=full, no width, no height'),
        _wrapInContainer(
          SuperContainer(
            color: bgColor,
            flex: 1,
            child: Text('SuperContent:dynamicSize=full, no width, no height'),
          ),
        ),
        boxH,
        Text('Below is:dynamicSize=full, width=infinity, no height'),
        _wrapInContainer(
          SuperContainer(
            color: bgColor,
            flex: 1,
            width: double.infinity,
            child: Text('dynamicSize=full, width=infinity, no height'),
          ),
        ),
        boxH,
        Text('Below is:dynamicSize=full, width=150, no height'),
        _wrapInContainer(
          SuperContainer(
            color: bgColor,
            flex: 1,
            width: 150,
            child: Text('dynamicSize=full, width=150, no height'),
          ),
        ),
        boxH,
        Text('Below is:dynamicSize=full, width=infinity, height=30'),
        _wrapInContainer(
          SuperContainer(
            color: bgColor,
            flex: 1,
            width: double.infinity,
            height: 30,
            child: Text('dynamicSize=full, width=infinity, height=30'),
          ),
        ),
        boxH,
        Text('So when SuperContainer has dynamicSize=full, then height '
            'value is ignored and already be infinity'),
        boxH,
      ],
    );
  }

  Widget _wrapInContainer(Widget child) {
    return child;
    /*return Container(
      color: Colors.greenAccent,
      width: double.infinity,
      height: 70,
      child: child,
    );*/
  }
}
