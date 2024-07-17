import 'package:flutter/material.dart';
import 'package:project_12/SecondScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  void getDate() {
    Future.delayed(Duration(seconds: 5),(){
      print("Hello (after five second method called - 05)");
    });


    Future.delayed(Duration(seconds: 2),(){
      print("Hello (after two second method called  - 02)");
    });


    print("world (normal getdate method print)");
  }

  // await 
  void getDateawait() async {
    await Future.delayed(Duration(seconds: 5),(){
      print("Hello (after five second method called - 05)");
    });


    await Future.delayed(Duration(seconds: 2),(){
      print("Hello (after two second method called  - 02)");
    });


    print("world (normal getdate method print)");
  }

  @override
  // start calling this initstate
  void initState() {
    // TODO: implement initState
    super.initState();
    getDate();
    getDateawait();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      
    );
  }
}