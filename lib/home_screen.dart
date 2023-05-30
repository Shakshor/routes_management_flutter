import 'package:flutter/material.dart';
import 'package:routes_navigation/screen_two.dart';
import 'package:routes_navigation/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {

  // page id
  // static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      // appBar
      appBar: AppBar(
        title: Text('Navigation & Routes'),
      ),

      // body
      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            // button
            InkWell(

              // on press function
              // navigate to another screen
              onTap: (){


                // navigate using route id
                Navigator.pushNamed(
                    context,
                    RouteName.screenTwo,
                    arguments: {
                      'Node' : 'Module',
                      'Flutter' : 'Good For Apps',
                    }
                );


                // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo(
                //   name: 'Shakshor',
                //   num: 12,
                // )));


              },

              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(child: Text('Screen 1')),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
