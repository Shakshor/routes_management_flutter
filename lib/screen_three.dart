import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {

  // page id
  // static const String id = 'screen_three';


  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      // appBar
      appBar: AppBar(
        title: Text('Screen Three'),
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
                Navigator.pop(context);
              },

              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(child: Text('Screen 3')),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
