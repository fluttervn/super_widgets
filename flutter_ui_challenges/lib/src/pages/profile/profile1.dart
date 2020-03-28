/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/utils/toast_util.dart';
import 'package:flutter_ui_challenges/super_widgets/super_widgets.dart';

class ProfileOnePage extends StatelessWidget {
  static const String path = 'lib/src/pages/profile/profile1.dart';

  @override
  Widget build(BuildContext context) {
    var statisticsWidget = SuperRow(
      children: <Widget>[
        SuperListTile(
          pFlex: 1,
          pColor: Colors.deepOrange.shade300,
          title: Text(
            '50895',
            textAlign: TextAlign.center,
            style: TextStyleBold(color: Colors.white, fontSize: 24),
          ),
          subtitle: Text(
            'Followers',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          ),
          onTap: () {
            showToast('50895 followers');
          },
        ),
        SuperListTile(
          pFlex: 1,
          pColor: Colors.red,
          title: Text(
            '34524',
            textAlign: TextAlign.center,
            style: TextStyleBold(color: Colors.white, fontSize: 24),
          ),
          subtitle: Text(
            'Following',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70),
          ),
          onTap: () {
            showToast('34524 following');
          },
        ),
      ],
    );

    var listInfoWidget = [
      SuperListTile(
        title: Text(
          'Email',
          style: TextStyle(color: Colors.deepOrange, fontSize: 12),
        ),
        subtitle: Text(
          'ram@kumar.com',
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          showToast('Email');
        },
      ),
      Divider(),
      SuperListTile(
        title: Text(
          'Phone',
          style: TextStyle(color: Colors.deepOrange, fontSize: 12),
        ),
        subtitle: Text(
          '+977 9818225533',
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          showToast('Phone');
        },
      ),
      Divider(),
      SuperListTile(
        title: Text(
          'Twitter',
          style: TextStyle(color: Colors.deepOrange, fontSize: 12),
        ),
        subtitle: Text(
          '@ramkumar',
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          showToast('Twitter');
        },
      ),
      Divider(),
      SuperListTile(
        title: Text(
          'Facebook',
          style: TextStyle(color: Colors.deepOrange, fontSize: 12),
        ),
        subtitle: Text(
          'facebook.com/ramkumar',
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          showToast('Facebook');
        },
      ),
      Divider(),
    ];
    var nameAvatarWidget = Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 0.9],
            colors: [Colors.red, Colors.deepOrange.shade300]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CircleAvatar(
                minRadius: 30,
                backgroundColor: Colors.red.shade600,
                child: Icon(
                  Icons.call,
                  size: 30,
                ),
              ),
              CircleAvatar(
                minRadius: 60,
                backgroundColor: Colors.deepOrange.shade300,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(images[0]),
                  minRadius: 50,
                ),
              ),
              CircleAvatar(
                minRadius: 30,
                backgroundColor: Colors.red.shade600,
                child: Icon(
                  Icons.message,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Ram Kumar',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          Text(
            'Kathmandu, Nepal',
            style: TextStyle(fontSize: 14, color: Colors.red.shade700),
          )
        ],
      ),
    );
    return Scaffold(
      // backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('View Profile'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          nameAvatarWidget,
          statisticsWidget,
          ...listInfoWidget,
        ],
      ),
    );
  }
}
