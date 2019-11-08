import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

/// SuperCard sample
class SuperCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperCard'),
      ),
      body: buildBody(context),
    );
  }

  /// Content of this page
  Widget buildBody(BuildContext context) {
    const boxH20 = SizedBox(height: 20);
    const boxH5 = SizedBox(height: 5);

    final cardUserInput = SuperCard(
      margin: EdgeInsets.all(10),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Please input username',
          hintStyle: TextStyle(color: Colors.black26),
          prefixIcon: Icon(Icons.person, color: Colors.black26),
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
        ),
      ),
    );

    final cardInfo = SuperCard(
      elevation: 5,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text('Event name', style: TextStyleBold()),
              boxH5,
              Text('Event date', style: TextStyleBold()),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Text('FlutterVN sharing event #1'),
              boxH5,
              Text('Nov 17th, 2019'),
            ],
          ),
        ],
      ),
    );

    final cardAction = InkWell(
      child: SuperCard(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        onPressed: () {
          Fluttertoast.showToast(msg: 'Action: onPressed');
        },
        onLongPressed: () {
          Fluttertoast.showToast(msg: 'Action: onLongPressed');
        },
        child: ListTile(
          title: Text('fluttervn/super_widgets'),
          subtitle: Text('Make Flutter widgets\' code shorter and richer by '
              'combining multiple widgets into a single widget.'),
          trailing: Icon(Icons.launch),
        ),
      ),
    );

    return SuperScrollViewColumn(
      padding: EdgeInsets.all(10),
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('SuperCard with margin=10, shape:radius=40, elevation=10, '
            'TextField inside'),
        boxH5,
        cardUserInput,
        boxH20,
        Text('SuperCard with margin=10, padding=20, elevation = 5, '
            'background, Row inside'),
        boxH5,
        cardInfo,
        boxH20,
        Text('SuperCard with onLongPressed & onLongPressed'),
        boxH5,
        cardAction,
        boxH20,
      ],
    );
  }
}
