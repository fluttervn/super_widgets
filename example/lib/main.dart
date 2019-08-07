import 'package:flutter/material.dart';

import 'super_column_page.dart';
import 'super_icon_page.dart';
import 'super_indexed_stack_page.dart';
import 'super_inkwell_page.dart';
import 'super_raised_button_page.dart';
import 'super_row_page.dart';
import 'super_scrollview_column_page.dart';
import 'super_scrollview_container_page.dart';
import 'super_stack_page.dart';
import 'super_text_page.dart';

void main() => runApp(MyApp());

/// This widget is the root of your application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SuperWidgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

/// Main page with list of entries inside
class MyHomePage extends StatelessWidget {
  /// List of <screen name, widget name>
  final Map<String, Widget> mapScreens = {
    'SuperStack': SuperStackPage(),
    'SuperIndexedStack': SuperIndexedStackPage(),
    'SuperRow': SuperRowPage(),
    'SuperColumn': SuperColumnPage(),
    'SuperRaisedButton': SuperRaisedButtonPage(),
    'SuperIcon': SuperIconPage(),
    'SuperText': SuperTextPage(),
    'SuperInkWell': SuperInkWellPage(),
    'SuperScrollViewContainer': SuperScrollViewContainerPage(),
    'SuperScrollViewColumn': SuperScrollViewColumnPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter SuperWidgets Demo'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: mapScreens.length,
          itemBuilder: (BuildContext context, int index) {
            final title = mapScreens.keys.elementAt(index);
            return ListTile(
              title: Text(title, style: TextStyle(fontSize: 16)),
              onTap: () {
                print('MyHomePage: click on: $index: $title');
                gotoScreen(context, mapScreens[title]);
              },
            );
          },
          padding: EdgeInsets.all(10),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Touch on FAB');
        },
        tooltip: 'Info',
        child: Icon(Icons.info),
      ),
    );
  }

  /// Go to destination screen (widget)
  void gotoScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute<Widget>(builder: (context) => screen),
    );
  }
}
