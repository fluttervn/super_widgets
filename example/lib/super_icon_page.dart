import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

class SuperIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperIcon'),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: SuperIcon(
        color: Colors.grey[300],
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(right: 20),
        alignment: Alignment.centerRight,
        childKey: Key('SuperIcon'),
        childColor: Colors.red,
        icon: Icons.backup,
        size: 80,
      ),
    );
  }
}
