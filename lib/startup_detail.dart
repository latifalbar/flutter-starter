import 'package:flutter/material.dart';

class StartupDetail extends StatelessWidget {
  final String assetLocation;
  final String startupName;
  final String startupDescription;

  const StartupDetail(
      {Key key, this.assetLocation, this.startupName, this.startupDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Detail',
      home: new Scaffold(
        appBar: AppBar(
          title: Text(startupName),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: new Container(
          padding: EdgeInsets.all(16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Center(
                child: Image.asset(
                  assetLocation,
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              new Center(
                child: new Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      startupName,
                      style:
                      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(startupDescription),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
