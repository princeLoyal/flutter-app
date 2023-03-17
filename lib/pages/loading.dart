import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
   Response response = await get('http://worldtimeapi.org/api/timezone/Africa/Lagos');
   
  }

  @override
  void initState() {
    super.initState();
    
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
