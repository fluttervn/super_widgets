/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class ProfileTwoPage extends StatelessWidget {
  static const String path = 'lib/src/pages/profile/profile2.dart';
  final List<Map> _collections = [
    {'title': 'Food joint', 'image': meal},
    {'title': 'Photos', 'image': images[1]},
    {'title': 'Travel', 'image': fishtail},
    {'title': 'Nepal', 'image': kathmandu2},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo.shade300, Colors.indigo.shade500]),
            ),
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: _mainListBuilder,
          ),
        ],
      ),
    );
  }

  Widget _mainListBuilder(BuildContext context, int index) {
    if (index == 0) return _buildHeader(context);
    if (index == 1) return _buildSectionHeader(context);
    if (index == 2) return _buildCollectionsRow();
    if (index == 3) {
      return Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
          child: Text('Most liked posts',
              style: Theme.of(context).textTheme.title));
    }
    return _buildListItem();
  }

  Widget _buildListItem() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: PNetworkImage(images[2], fit: BoxFit.cover),
      ),
    );
  }

  Container _buildSectionHeader(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Collection',
            style: Theme.of(context).textTheme.title,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Create new',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }

  Container _buildCollectionsRow() {
    return Container(
      color: Colors.white,
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _collections.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: 150,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: PNetworkImage(_collections[index]['image'],
                              fit: BoxFit.cover))),
                  SizedBox(
                    height: 5,
                  ),
                  Text(_collections[index]['title'],
                      style: Theme.of(context)
                          .textTheme
                          .subhead
                          .merge(TextStyle(color: Colors.grey.shade600)))
                ],
              ));
        },
      ),
    );
  }

  Container _buildHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      height: 240,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 10),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Mebina Nepal',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('UI/UX designer | Foodie | Kathmandu'),
                  SizedBox(
                    // ignore: prefer_int_literals
                    height: 16.0,
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '302',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Posts'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '10.3K',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Followers'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              '120',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Following'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Material(
                elevation: 5,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: CachedNetworkImageProvider(avatars[0]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
