import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperListView sample
class SuperListViewPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: _scaffoldKey,
        title: Text('SuperListView'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    final listTile = SuperListTile(
      color: Colors.blue.shade100,
      title: Text('fluttervn/super_widgets'),
      trailing: Icon(Icons.more_vert),
    );
    final listContent = <Widget>[
      listTile,
      Divider(),
      listTile,
      Divider(),
      listTile,
      Divider(),
      listTile,
      Divider(),
      listTile,
      Divider(),
      listTile,
      Divider(),
      listTile,
      Divider(),
    ];

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          context,
          description: 'SuperListView with margin=10, padding=20, color',
          widget: SuperListView(
            color: Colors.grey.shade200,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            children: listContent,
          ),
        ),
        ..._wrapInRow(
          context,
          description: 'SuperListView with fixed width & height',
          widget: SuperListView(
            color: Colors.grey.shade200,
            height: 100,
            width: 250,
            children: listContent,
          ),
        ),
      ],
    );
  }

  List<Widget> _wrapInRow(BuildContext context,
      {String description, Widget widget}) {
    return [
      ListTile(
        title: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => showModalBottomSheet(
          context: _scaffoldKey.currentContext,
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(description),
            ),
            body: widget,
          ),
        ),
      ),
      Divider(),
    ];
  }
}
