import 'package:flutter/material.dart';

class LoadingErr extends StatelessWidget {

  Map err = {};

  @override
  Widget build(BuildContext context){

    err = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: Center(
        child: Text(
          err['err']
        ),
      ),
    );
  }
}