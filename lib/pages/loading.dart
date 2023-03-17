import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() {
   
   
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
