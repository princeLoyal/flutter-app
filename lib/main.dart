import 'package:flutter/material.dart';
import 'package:flutter_app/pages/choose_location.dart';
import "package:flutter_app/pages/home.dart";
import "package:flutter_app/pages/loading.dart";
import 'package:flutter_app/pages/loading_err.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/loading_err': (context) => LoadingErr(),
    },
  ));
}
