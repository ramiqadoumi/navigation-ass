import 'package:flutter/material.dart';
import 'package:navigation/main.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome from screen tow "),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context, MaterialPageRoute(
                        builder: (context) {
                          return MyApp();
                        },
                      ));
                    });
                  },
                  child: Text("go to home page")),
            ],
          ),
        ));
  }
}
