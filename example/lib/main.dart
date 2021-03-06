import 'package:flutter/material.dart';

import 'super_card_page.dart';
import 'super_circle_avatar_page.dart';
import 'super_clip_rrect_page.dart';
import 'super_column_page.dart';
import 'super_container_page.dart';
import 'super_flat_button_page.dart';
import 'super_icon_button_page.dart';
import 'super_icon_page.dart';
import 'super_indexed_stack_page.dart';
import 'super_inkwell_page.dart';
import 'super_list_tile_page.dart';
import 'super_listview_page.dart';
import 'super_outlilne_button_page.dart';
import 'super_raised_button_page.dart';
import 'super_row_page.dart';
import 'super_scrollview_column_page.dart';
import 'super_scrollview_container_page.dart';
import 'super_scrollview_row_page.dart';
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
    'SuperContainer': SuperContainerPage(),
    'SuperCard': SuperCardPage(),
    'SuperCircleAvatar': SuperCircleAvatarPage(),
    'SuperClipRRect': SuperClipRRectPage(),
    'SuperColumn': SuperColumnPage(),
    'SuperFlatButton': SuperFlatButtonPage(),
    'SuperIcon': SuperIconPage(),
    'SuperIconButton': SuperIconButtonPage(),
    'SuperIndexedStack': SuperIndexedStackPage(),
    'SuperInkWell': SuperInkWellPage(),
    'SuperListTile': SuperListTilePage(),
    'SuperListView': SuperListViewPage(),
    'SuperOutlineButton': SuperOutlineButtonPage(),
    'SuperRaisedButton': SuperRaisedButtonPage(),
    'SuperRow': SuperRowPage(),
    'SuperScrollViewColumn': SuperScrollViewColumnPage(),
    'SuperScrollViewContainer': SuperScrollViewContainerPage(),
    'SuperScrollViewRow': SuperScrollViewRowPage(),
    'SuperStack': SuperStackPage(),
    'SuperText': SuperTextPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter SuperWidgets Demo'),
      ),
      body: Center(
        child: ListView.separated(
          itemCount: mapScreens.length,
          physics: BouncingScrollPhysics(),
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
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
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
