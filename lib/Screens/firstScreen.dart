
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_initializing_formals

import 'package:flutter/material.dart';
import 'package:my_first_flutter/Screens/secondScreen.dart';
import 'package:my_first_flutter/main.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  //const FirstPage({super.key});

  String text = "Something";

  FirstPage(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: <String, WidgetBuilder>{
      //       '/second': (context) => SecondScreen(),
      //     },
      home: Scaffold(
        appBar: AppBar(
          title: Text(text),
          
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
                text,
                style: TextStyle(color: Colors.blueGrey,
                fontSize: 30.0),
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.skip_next),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) {
                  return SecondScreen("This is Second View");
              } 
              ));
             // Navigator.of(context).pushNamed('/second');
          },
        ),
      ),
      
    );
    
  }
}