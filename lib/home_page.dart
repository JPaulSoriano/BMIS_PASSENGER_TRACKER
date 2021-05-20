import 'package:bmis_passenger_tracking/map_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: Column(children: [
              ElevatedButton(
                  onPressed: () {
                    navigateToMapsPage();
                  },
                  child: Text('Track')),
            ])),
          ],
        ),
      ),
    );
  }

  navigateToMapsPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Map()),
      (Route<dynamic> route) => false,
    );
  }
}
