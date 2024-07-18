import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: false,
        child: Center(child: Text("second screen" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
      ),
    );
  }
}