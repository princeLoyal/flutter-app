import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  SpinKitFadingCircle loadingDisplay = SpinKitFadingCircle(
    color: Colors.white,
    size: 50.0,
  );

  void setupWorldTime() async {
    Worldtime instance = Worldtime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    if(instance.time != 'Could not get time!'){
     Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location' : instance.location,
        'flag' : instance.flag,
        'time': instance.time
      });
    } else {
      Navigator.pushReplacementNamed(context, '/loading_err', arguments: { 'err': instance.time});
    }
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: loadingDisplay,
      ),
    );
  }
}
