import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// TestContainerNoChild sample
class ContainerSizeSingleChildPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerSizeSingleChild'),
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

    return Container(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
