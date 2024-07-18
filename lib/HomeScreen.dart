import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  
  int age = 0;
  bool isloading = false;
  final TextEditingController name = TextEditingController();
   
  void getDate() async {
    var url = Uri.parse('https://api.agify.io/?name=${name.text}');
    Response rs = await get(url);
    //print(rs.body);  (import {API} eken gtta deta tika pennna meka use krnn)

    Map urs = jsonDecode(rs.body);
    
    setState(() {
      isloading = false;
      age = urs['age'];
    });

    
  }

  @override
  // start calling this initstate
  void initState() {
    // TODO: implement initState
    super.initState();
    
    
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isloading = true;
          getDate();
        },
        child: Icon(Icons.api),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: 
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter your name"
                ),
              ),
              SizedBox(height: 30.0),
          
              if(isloading)
              Text('loading',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))
              else
              Text("$age" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ],
          ),
        )),
      ),
    );
  }
}