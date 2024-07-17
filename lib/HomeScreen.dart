import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  String fullname='';

  // await 
  void getDate() async {
    String firstname = await Future.delayed(Duration(seconds: 5),(){
      return"Sandun";
    });


    String Lastname = await Future.delayed(Duration(seconds: 2),(){
      return "Sampath";
    });


    print("$firstname $Lastname");

    setState(() {
      fullname = "$firstname $Lastname";
    });
  }

  @override
  // start calling this initstate
  void initState() {
    // TODO: implement initState
    super.initState();
    getDate();
    
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text("$fullname" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}