import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperCircleAvatar sample
class SuperCircleAvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperCircleAvatar'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ..._wrapInRow(
          description: 'SuperCircleAvatar with border',
          widget: SuperCircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey.shade200,
            borderColor: Colors.grey,
            borderWidth: 5,
            child: Icon(Icons.group, size: 35),
          ),
        ),
        ..._wrapInRow(
          description: 'SuperCircleAvatar with network image',
          widget: SuperCircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              'https://hinhanhdep.net/wp-content/uploads/2016/01/avatar-girl-xinh-7.jpg',
            ),
            borderColor: Colors.red,
            borderWidth: 5,
          ),
        ),
        ..._wrapInRow(
          description: 'SuperCircleAvatar with action',
          widget: SuperCircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey.shade200,
            borderColor: Colors.grey,
            borderWidth: 5,
            onPressed: () {
              Fluttertoast.showToast(msg: 'action onPressed');
            },
            onLongPressed: () {
              Fluttertoast.showToast(msg: 'action onLongPressed');
            },
            child: Icon(Icons.launch, size: 35),
          ),
        ),
      ],
    );
  }

  List<Widget> _wrapInRow({String description, Widget widget}) {
    return [
      Text(description),
      SizedBox(height: 5),
      widget,
      SizedBox(height: 20),
    ];
  }
}
