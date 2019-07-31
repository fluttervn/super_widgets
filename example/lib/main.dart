import 'package:flutter/material.dart';

import 'super_column_page.dart';
import 'super_indexed_stack_page.dart';
import 'super_row_page.dart';
import 'super_stack_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SuperWidgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter SuperWidgets Demo',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final Map<String, Widget> mapScreens = {
    "SuperStack": SuperStackPage(),
    "SuperIndexedStack": SuperIndexedStackPage(),
    "SuperRow": SuperRowPage(),
    "SuperColumn": SuperColumnPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: mapScreens.length,
          itemBuilder: (BuildContext context, int index) {
            final title = mapScreens.keys.elementAt(index);
            return ListTile(
              title: new Text(title, style: TextStyle(fontSize: 16)),
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

  void gotoScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
