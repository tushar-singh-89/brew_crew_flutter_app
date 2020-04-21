import 'package:brew_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './home/home.dart';
import './authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // return either Home or Authenticate Widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}