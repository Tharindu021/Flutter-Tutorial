// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int count = 0;
    setState(() {
    count = count + 1;
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home : Scaffold(
          appBar : AppBar(
    
          title : const Text('Flash App'),
          leading : IconButton(
            icon : const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon :const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon :const Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
          flexibleSpace: Image.asset(
            "/images/nature.jpg",
            fit: BoxFit.cover,
          ),
          // bottom: PreferredSize(
          //   child: Container(),
          //   preferredSize: Size.fromHeight(30.0),
    
          // ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_bike),
                text: 'Direction',
                ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Schedulled'
                ),
              Tab(
                icon: Icon(Icons.directions_car),
                text: "Prices"
                ),
            ],
          ),
          elevation: 5.0,
          ),
          body: Container(
            width: double.infinity,
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Text(
            //       "Text 01",
            //       style: TextStyle(fontSize: 20.0)
            //     ),
            //     Text(
            //       "Text 02",
            //       style: TextStyle(fontSize: 20.0)
            //     ),
            //     Text(
            //       "Text 03",
            //       style: TextStyle(fontSize: 20.0)
            //     ),
            //     Text(
            //       "Text 04",
            //       style: TextStyle(fontSize: 20.0)
            //     ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(
                    "You have pushed one time",
                    style: TextStyle(fontSize: 20.0)
                  ),
                  Text(
                    '$count',
                    style: Theme.of(context).textTheme.displaySmall,
                    
                  ),
                ],
                ),
              //],
              
              
            //)
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: increment,
            ),
          )
          // body: Container(
          //   //padding: EdgeInsets.symmetric(vertical: 20.0,),
          //   margin: EdgeInsets.all(5.0),
          //   height: 75.00,
          //   width: double.infinity,
          //   color: Colors.black45,
          //   alignment: Alignment.center,
          //   //transform: Matrix4.rotationZ(0.1),
          //     child: Text("This is test the boundary",style:TextStyle(fontSize: 15.0)),
          //   ),
          
          // body:  TabBarView(
          //   children: [
          //     tab1View(),
          //     Icon(Icons.directions_transit),
          //     Icon(Icons.directions_bike),
          //   ],
          // ),
          // body : Center(
          //   child :Text(
          //     "Enter Your Note",
          //     style :TextStyle(fontSize: 20.0, fontWeight:FontWeight.w100 ),
          //   ),
          //   // child: Image(
          //   //   image:
          //   //     AssetImage('/images/nature.jpg')
          //   // )
          // ),
        ),
      );
  }
}


Widget tab1View() {
  return Container(
    child: Center(
      child: Text("Hi this is first tab view"),
    ),
  );
}