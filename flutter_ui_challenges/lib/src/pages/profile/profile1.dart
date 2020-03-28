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
          onTap: showDefaultToast,
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
          onTap: showDefaultToast,
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
        onTap: showDefaultToast,
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
        onTap: showDefaultToast,
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
        onTap: showDefaultToast,
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
        onTap: showDefaultToast,
      ),
      Divider(),
    ];
    var nameAvatarWidget = SuperColumn(
      pHeight: 200,
      pDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.5, 0.9],
          colors: [Colors.red, Colors.deepOrange.shade300],
        ),
      ),
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SuperRow(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SuperCircleAvatar(
              minRadius: 30,
              borderWidth: 3,
              borderColor: Colors.red.shade900,
              backgroundColor: Colors.red.shade600,
              onPressed: showDefaultToast,
              child: Icon(Icons.call, size: 30),
            ),
            SuperCircleAvatar(
              minRadius: 60,
              borderWidth: 10,
              borderColor: Colors.deepOrange.shade300,
              backgroundImage: CachedNetworkImageProvider(images[0]),
              onPressed: showDefaultToast,
            ),
            SuperCircleAvatar(
              minRadius: 30,
              borderWidth: 3,
              borderColor: Colors.red.shade900,
              backgroundColor: Colors.red.shade600,
              onPressed: showDefaultToast,
              child: Icon(Icons.message, size: 30),
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
