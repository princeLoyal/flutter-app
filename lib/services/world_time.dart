import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Worldtime {

  String location;
  String time;
  String flag;
  String url;

  Worldtime({this.flag = '', this.location = '', this.time = '', this.url = ''});

  Future<void> getTime() async {
    try {
      Response response = await get(
          Uri.parse('http://worldtimeap.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = DateFormat.jm().format(now);
    } catch (err) {
      time = 'Could not get time!';
    }

  }

}