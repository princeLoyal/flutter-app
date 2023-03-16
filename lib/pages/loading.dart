import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  getData() async {
   Response response = await get('http://worldtimeapi.org/api/timezone/Africa/Lagos');
   Map data = jsonDecode(response.body);
   return AlertDialog(
    title: Text('Succesfully received'),
    content: Text('Api get recieved successfully')
   );
  }

  @override
  void initState() {
    super.initState();
    AlertDialog alert = getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
children: <Widget>[
Text('Loading'),
],
      ),
    );
  }
}
