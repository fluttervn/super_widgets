import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperScrollViewContainer sample
class SuperScrollViewContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperScrollViewContainer'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('SuperScrollViewContainer - vertical'),
        Expanded(
          child: SuperScrollViewContainer(
            color: Colors.grey[300],
            padding: EdgeInsets.all(10),
            child: Text(
              'This\n\nis\n\nSuper\n\nScroll\n\nView'
              '\n\nContainer\n\nvertical\n\npage',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ),
        Text('SuperScrollViewContainer - horizontal'),
        Expanded(
          child: SuperScrollViewContainer(
            color: Colors.grey[300],
            padding: EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
            child: Text(
              'This ... is... Super ... Scroll ... View ... '
              'Container ... horizontal ... page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
