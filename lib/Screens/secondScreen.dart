// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:my_first_flutter/main.dart';



class SecondScreen extends StatelessWidget {
  
  String text = "Something";

  SecondScreen(String text) {
    this.text = text;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(
            title: Text("The Second Page."),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                text,
                style: TextStyle(fontSize: 20.0)
                ),
              ],          
            )
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.home),
            onPressed: () {
              //Navigator.pushNamed(context, 'home');
              //Navigator.of(context).pushNamed('/home');
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) {
                  return MyHomePage(); 
                }
                ));
              }
          ),
      ),
    );
  }
}