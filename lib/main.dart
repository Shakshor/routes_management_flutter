import 'package:flutter/material.dart';
import 'package:routes_navigation/home_screen.dart';
import 'package:routes_navigation/screen_three.dart';
import 'package:routes_navigation/screen_two.dart';
import 'package:routes_navigation/utils/routes.dart';
import 'package:routes_navigation/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // // routes
      // initialRoute: HomeScreen.id,
      //
      // routes: {
      //
      //   HomeScreen.id: (context) => HomeScreen(),
      //   ScreenTwo.id: (context) => ScreenTwo(),
      //   ScreenThree.id: (context) => ScreenThree(),

      // },

      // route initialize
      initialRoute: RouteName.homeScreen,

      // route generate initialize
      onGenerateRoute: Routes.generateRoute,




    );
  }
}

