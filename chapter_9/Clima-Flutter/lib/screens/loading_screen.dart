import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String position;

  Future<Position> getLocation() async {
    Position currentPosition = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(currentPosition);
    setState(() {
      position = currentPosition.toString();
    });
    return currentPosition;
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
