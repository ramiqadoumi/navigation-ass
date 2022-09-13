import 'package:flutter/material.dart';
import 'package:navigation/screen1.dart';
import 'package:navigation/screen2.dart';

void main() {
  runApp(MaterialApp(home:MyApp() ,) );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => Home();
}

class Home extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return screen1();
              },
               ) );
              
            });
          }, child: Text("go to screen 1")),
           ElevatedButton(onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return screen2();
              },
               ) );
              
            });
          }, child: Text("go to screen 2")),
        
        ],
      )),
    );
  }
}
