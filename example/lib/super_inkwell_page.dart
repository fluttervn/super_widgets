import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/super_inkwell.dart';
import 'package:super_widgets/super_widgets.dart';

class SuperInkWellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuperInkWell'),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SuperColumn(
      children: [
        SizedBox(height: 20),
        SuperInkWell(
          alignment: Alignment.center,
          childText: Text(
            'default SuperInkWell',
            style: TextStyle(fontSize: 16, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        SuperInkWell(
          padding: EdgeInsets.all(10),
          width: 200,
          height: 50,
          alignment: Alignment.center,
          childText: Text(
            'SuperInkWell with size',
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(height: 20),
        SuperInkWell(
          padding: EdgeInsets.all(10),
          width: 50,
          height: 50,
          alignment: Alignment.center,
          childText: Icon(
            Icons.ac_unit,
          ),
        ),
      ],
    );
  }
}
