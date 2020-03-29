/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/utils/toast_util.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:flutter_ui_challenges/super_widgets/super_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileFivePage extends StatelessWidget {
  static const String path = 'lib/src/pages/profile/profile5.dart';

  @override
  Widget build(BuildContext context) {
    final Color color1 = Color(0xffFC5CF0);
    final Color color2 = Color(0xffFE8852);
    final String image = avatars[0];

    var gradientBackgroundWidget = Container(
      height: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );

    var bottomToolbar = SuperStack(
      children: <Widget>[
        SuperRow(
          pPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          pMargin: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
          pDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          children: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(FontAwesomeIcons.user),
              onPressed: showDefaultToast,
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.location_on),
              onPressed: showDefaultToast,
            ),
            Spacer(),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.add),
              onPressed: showDefaultToast,
            ),
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.message),
              onPressed: showDefaultToast,
            ),
          ],
        ),
        Center(
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: showDefaultToast,
            child: Icon(Icons.favorite, color: Colors.pink),
          ),
        ),
      ],
    );
    var profileInfoWidget = SuperColumn(
      pMargin: const EdgeInsets.only(top: 80),
      children: <Widget>[
        Text(
          'Date mate',
          style: TextStyleItalic(color: Colors.white, fontSize: 28),
        ),
        SizedBox(height: 20),
        SuperStack(
          pFlex: 1,
          children: <Widget>[
            SuperClipRRect(
              pHeight: double.infinity,
              pMargin: const EdgeInsets.only(left: 30, right: 30, top: 10),
              borderRadius: BorderRadius.circular(30),
              child: PNetworkImage(
                image,
                fit: BoxFit.cover,
              ),
            ),
            SuperText(
              '3.7mi away',
              pAlignment: Alignment.topCenter,
              cPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              cDecoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Sasha - 22',
          style: TextStyleBold(fontSize: 16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 16,
              color: Colors.grey,
            ),
            Text(
              'San Diego, California, USA',
              style: TextStyle(color: Colors.grey.shade600),
            )
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              color: Colors.grey,
              icon: Icon(FontAwesomeIcons.instagram),
              onPressed: showDefaultToast,
            ),
            IconButton(
              color: Colors.grey,
              icon: Icon(FontAwesomeIcons.facebookF),
              onPressed: showDefaultToast,
            ),
            IconButton(
              color: Colors.grey.shade600,
              icon: Icon(FontAwesomeIcons.twitter),
              onPressed: showDefaultToast,
            ),
          ],
        ),
        SizedBox(height: 10),
        bottomToolbar
      ],
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          gradientBackgroundWidget,
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: showDefaultToast,
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: showDefaultToast,
              ),
            ],
          ),
          profileInfoWidget,
        ],
      ),
    );
  }
}
