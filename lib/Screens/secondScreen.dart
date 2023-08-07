// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:my_first_flutter/main.dart';



class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("The Second page of the App."),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This Is Second page..',
              style: TextStyle(fontSize: 20.0)
              ),
            ],          
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) {
                return MyHomePage(); 
              }
              ));
          }),
    );
  }
}