import 'package:flutter/material.dart';
import 'package:flutter_app/services/world_time.dart';


class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading';

  void setupWorldTime() async {
    Worldtime instance = Worldtime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Text('loading'),
      ),
    );
  }
}
