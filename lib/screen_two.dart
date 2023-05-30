import 'package:flutter/material.dart';
import 'package:routes_navigation/screen_three.dart';
import 'package:routes_navigation/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {

  // page id
  // static const String id = 'screen_two';

  // // state
  // final String name;
  // final int num;

  dynamic data;

  ScreenTwo({Key? key, required this.data }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {

  @override
  Widget build(BuildContext context) {

    // final arguments = ModalRoute.of(context)!.settings.arguments as Map;


    return Scaffold(


      // appBar
      appBar: AppBar(

        title: Text(widget.data['Node']),

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


                // with route id
                Navigator.pushNamed(
                    context,
                    RouteName.screenThree,
                );

                // without route
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));


              },

              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(child: Text('Screen 2')),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
