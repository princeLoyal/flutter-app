import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
   var url = Uri.https('https://worldtimeapi.org/api/timezone/Africa/Lagos');

  // Await the http get response, then decode the json-formatted response.
  
   
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
children: <Widget>[
Text('Loading'),
],
      ),
    );
  }
}
