/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/utils/utils_index.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:flutter_ui_challenges/super_widgets/super_widgets.dart';

class ProfileThreePage extends StatelessWidget {
  static const String path = 'lib/src/pages/profile/profile3.dart';
  final _image = avatars[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SuperScrollViewStack(
        children: <Widget>[
          SizedBox(
            height: 250,
            width: double.infinity,
            child: PNetworkImage(
              _image,
              fit: BoxFit.cover,
            ),
          ),
          SuperColumn(
            pMargin: EdgeInsets.fromLTRB(16, 200, 16, 16),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SuperColumn(
                    pPadding: EdgeInsets.all(16),
                    pMargin: EdgeInsets.only(top: 16),
                    pDecoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SuperColumn(
                        pMargin: EdgeInsets.only(left: 96),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Little Butterfly',
                            style: context.textThemeTitle,
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            title: Text('Product Designer'),
                            subtitle: Text('Kathmandu'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          SuperColumn(
                            pFlex: 1,
                            children: const <Widget>[
                              Text('285'),
                              Text('Likes')
                            ],
                          ),
                          SuperColumn(
                            pFlex: 1,
                            children: const <Widget>[
                              Text('3025'),
                              Text('Comments')
                            ],
                          ),
                          SuperColumn(
                            pFlex: 1,
                            children: const <Widget>[
                              Text('650'),
                              Text('Favourites')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(_image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SuperColumn(
                pDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('User information'),
                  ),
                  Divider(),
                  SuperListTile(
                    title: Text('Email'),
                    subtitle: Text('butterfly.little@gmail.com'),
                    leading: Icon(Icons.email),
                    onTap: showDefaultToast,
                  ),
                  ListTile(
                    title: Text('Phone'),
                    subtitle: Text('+977-9815225566'),
                    leading: Icon(Icons.phone),
                    onTap: showDefaultToast,
                  ),
                  ListTile(
                    title: Text('Website'),
                    subtitle: Text('https://www.littlebutterfly.com'),
                    leading: Icon(Icons.web),
                    onTap: showDefaultToast,
                  ),
                  ListTile(
                    title: Text('About'),
                    subtitle: Text('Lorem ipsum, dolor sit amet consectetur '
                        'adipisicing elit. Nulla, illo repellendus quas beatae '
                        'reprehenderit nemo, debitis explicabo officiis sit aut'
                        ' obcaecati iusto porro? Exercitationem illum '
                        'consequuntur magnam eveniet delectus ab. Lorem ipsum, '
                        'dolor sit amet consectetur. Nulla, illo repellendus '
                        'quas beatae reprehenderit nemo, debitis explicabo '
                        'officiis sit aut obcaecati iusto porro elit'),
                    leading: Icon(Icons.person),
                    onTap: showDefaultToast,
                  ),
                  ListTile(
                    title: Text('Joined Date'),
                    subtitle: Text('15 February 2019'),
                    leading: Icon(Icons.calendar_view_day),
                    onTap: showDefaultToast,
                  ),
                ],
              )
            ],
          ),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          )
        ],
      ),
    );
  }
}
