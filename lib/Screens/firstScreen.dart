
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_first_flutter/Screens/secondScreen.dart';
import 'package:my_first_flutter/main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context, MyHomePage());
            },
            ),
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'This Is First Page',
                style: TextStyle(color: Colors.blueGrey,
                fontSize: 30.0),
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.skip_next),
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (_) {
            //       return SecondScreen();
            //   } 
            //   ));
              Navigator.of(context).pushNamed('/second');
          },
        ),
      ),
      routes: <String, WidgetBuilder>{
            '/second': (context) => SecondScreen(),
          },
    );
    
  }
}