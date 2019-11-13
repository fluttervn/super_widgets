import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:super_widgets/super_widgets.dart';

abstract class BaseDemoPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final Color mainBgColor = Colors.grey.shade400;
  final Text childTextBox = Text(
    'child of Super *',
    style: TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.yellow,
    ),
  );

  final ListTile listTile = ListTile(
    leading: Icon(Icons.message),
    title: Text('fluttervn/super_widgets'),
    subtitle: Text('Combine multiple widgets into single one'),
  );

  final ListTile listTileSmall = ListTile(
    leading: Icon(Icons.message),
    title: Text('fluttervn/super_widgets'),
    subtitle: Text('Github.com'),
  );

  final ShapeBorder shapeBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );

  void showToastOnPress() {
    Fluttertoast.showToast(msg: 'action onPress');
  }

  void showToastOnLongPress() {
    Fluttertoast.showToast(msg: 'action onLongPress');
  }

  List<Widget> buildContent(BuildContext context);

  Text title(String text) {
    return Text(
      text,
      style: TextStyleBold(fontSize: 20),
    );
  }

  Text header(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 24),
    );
  }

  ExpansionTile buildExpansionTile({
    String title,
    List<Widget> children,
    bool initiallyExpanded = false,
  }) {
    return ExpansionTile(
      title: header(title),
      initiallyExpanded: initiallyExpanded,
      children: children,
    );
  }

  List<Widget> showEntryInBottomSheetWithFlexibleContent(
    BuildContext context, {
    String description,
    Widget widget,
    String error,
  }) {
    return [
      ListTile(
        title: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          if (error != null && error.isNotEmpty) {
            Fluttertoast.showToast(msg: error, toastLength: Toast.LENGTH_LONG);
            return;
          }
          showModalBottomSheet(
            context: _scaffoldKey.currentContext,
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(description, maxLines: 2),
              ),
              body: SuperScrollViewColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                padding: EdgeInsets.all(5),
                children: [
                  Text('Top...'),
                  SizedBox(height: 5),
                  widget,
                  SizedBox(height: 5),
                  Text('Bottom...'),
                ],
              ),
            ),
          );
        },
      ),
      Divider(),
    ];
  }

  List<Widget> showEntryInBottomSheetWithNonFlexContent(
    BuildContext context, {
    String description,
    Widget widget,
  }) {
    return [
      ListTile(
        title: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          showModalBottomSheet(
            context: _scaffoldKey.currentContext,
            builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text(description, maxLines: 2),
              ),
              body: SuperScrollViewContainer(
                padding: EdgeInsets.all(5),
                height: 300,
                child: Stack(
                  children: <Widget>[
                    widget,
                  ],
                ),
              ),
            ),
          );
        },
      ),
      Divider(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: _scaffoldKey,
        title: Text('SuperContainer'),
      ),
      body: SuperScrollViewColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        padding: EdgeInsets.all(10),
        mainAxisSize: MainAxisSize.min,
        children: buildContent(context),
      ),
    );
  }
}
