
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routes_navigation/home_screen.dart';
import 'package:routes_navigation/screen_three.dart';
import 'package:routes_navigation/screen_two.dart';
import 'package:routes_navigation/utils/routes_name.dart';

class Routes {

  // method
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){

      // home screen
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      // second screen
        case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo( data: settings.arguments as Map,));

      // third screen
        case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('no route defined')),
          );
        }
        );

    }

  }


}