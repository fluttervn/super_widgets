import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:flutter_ui_challenges/features/home/presentation/pages/new_home.dart';
import 'package:provider/provider.dart';

import './login.dart';
import './splash.dart';

class AuthHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, UserRepository user, _) {
        switch (user.status) {
          case Status.Uninitialized:
            return Splash();
          case Status.Unauthenticated:
          case Status.Authenticating:
            return LoginPage();
          case Status.Authenticated:
            return NewHomePage();
        }
      },
    );
  }
}
