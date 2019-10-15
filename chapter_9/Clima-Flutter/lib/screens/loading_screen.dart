import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String position;

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    setState(() {
      position =
          location.latitude.toString() + " / " + location.longitude.toString();
    });
    print(position);
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  //Get the current location
                  getLocation();
                },
                child: Text('Get Location'),
              ),
              Text(position ?? ""),
            ],
          ),
        ),
      ),
    );
  }
}
