import 'package:flutter/material.dart';
import 'package:rife/common/class/fade_pageroute.dart';
import 'package:rife/screens/login/index.dart';
import 'package:rife/screens/splash/index.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FadeRoute(page: SplashScreen());
      case '/login':
        return FadeRoute(page: LoginScreen());
      default:
        return MaterialPageRoute<StatefulWidget>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined.'),
              ),
            );
          },
        );
    }
  }
}